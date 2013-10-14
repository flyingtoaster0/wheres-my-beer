class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])
    respond_to do |format|
      format.json { render :json => @store }
    end
  end
end