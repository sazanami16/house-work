class ItemsController < ApplicationController
  before_action :find_params, only: [:show, :edit, :update, :destroy]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to "/works/#{@item.work.id}"
    else
      render :new
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to "/works/#{@item.work.id}"
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity, :need_id).merge(work_id: params[:work_id])
  end

  def work_params
    params.require(:work).permit(:name, :weight_id, :rule)
  end

  def find_params
    @item = Item.find(params[:id])
  end
end
