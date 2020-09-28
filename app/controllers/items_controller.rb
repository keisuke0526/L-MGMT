class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if  @item.save
      redirect_to root_path, notice: '登録内容が保存されました。'
    else
      flash.now[:alert] = '登録方法に誤りがあります。'
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to root_path, notice:'更新しました'
    else
      redirect_to edit_item_path(item.id), notice: '更新できませんでした' 
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path, notice: "商品を削除しました。"
  end

  def search
    @items = Item.search(params[:keyword])
  end

  private
    def item_params
      params.require(:item).permit(:guest_name, :pickup_day, :houseroom, :room_no, :phone_number, :remark)
    end


end
