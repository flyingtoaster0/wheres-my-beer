class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])
    # Consider adding a feature to show all the stock of a store. Easy to implement.
  end
end