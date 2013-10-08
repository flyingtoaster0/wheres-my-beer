class ProductsController < ApplicationController

  def index

  end


  def show
    @product = Product.find(params[:id])
    @inventory = Inventory.where(product_id: params[:id])

    @stores = @inventory.collect do |i|
      store = Store.find(i.store_id)
      {:name => store.name, :city => store.city, :address_line_1 => store.address_line_1, :quantity => i.quantity}
    end

  end


  def search
    query = params[:query].downcase

    # Check to see if there is an exact product name match
    @products = Product.where('lower(name) = ?', query).collect{|p| p.id}

    if @products.length == 1
      # Found it. Redirect to product page here.
      redirect_to product_url(@products.first)
    end

    if @products.empty?
      query.split(' ').each { |x| @products = Product.where('lower(name) like ?', '%' + x + '%').collect{|p| p.id} }

      # Found something. Redirect to product page here.
      if @products.length == 1
        redirect_to product_url(@products.first)
      end

      # Still nothing... tough. Try searching with just the first four letters of each word and see what you can find.
      if @products.empty?
        query.split(' ').each { |x| @products = Product.where('lower(name) like ?', '%' + x[0..3] + '%').collect{|p| p.id} }
        if @products.length == 1
          redirect_to product_url(@products.first)
          # Somehow found something. Redirect to product page here.
        end
      end
    end

    # If you STILL found nothing, take em back to the front page and show one of those nice notices
    if @products.empty?
      redirect_to root_url, flash: { notice: 'Sorry! "' + params[:query] + '" returned no results :(' }
    end

    # Otherwise, grats. You get to go to the view. Show search results.
  end

end