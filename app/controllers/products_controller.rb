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
    query = params[:query]

    # Check to see if there is an exact product name match
    @products = Product.where('lower(name) = ?', query.downcase!).collect{|p| p.id}

    if @products.length == 1
      # Found it. Redirect to product page here.
    end

    if @products.empty?
      @products = Product.where('lower(name) like ?', query.slice!(/ .*/) + '%').collect{|p| p.id}

      if @products.length == 1
        # Found something. Redirect to product page here.
      end

      # Still nothing... tough. Try searching with just the first three letters and see what you can find.
      if @products.empty?
        @products = Product.where('lower(name) like ?', query[0..3] + '%').collect{|p| p.id}

        if @products.length == 1
          # Somehow found something. Redirect to product page here.
        end
      end
    end

    if @products.empty?
      # If you STILL found nothing, take em back to the front page and show one of those nice "flash" errors.
      # Be sure to pass params[:query] back to the front page so you can tell them what query didn't work.
    end

    # Otherwise, grats. You get to go to the view now.
  end

end