class ProductsController < ApplicationController

  def index

  end


  def show
    @product = Product.find(params[:id])
    @inventory = Inventory.where(product_id: params[:id])

    @stores = @inventory.collect do |i|
      store = Store.find(i.store_id)
      {:store_id => store.id, :name => store.name, :city => store.city, :address_line_1 => store.address_line_1, :quantity => i.quantity}
    end


  end


  def search
    @query = params[:query]
    # TODO do some intelligent-like full text search.
  end

end