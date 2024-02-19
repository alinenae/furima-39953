class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:items_name,:explanation,:category_id,:items_state_id,:shipping_burden_id,:territory_id,:carry_dey_id,:price,:item_image).merge(user_id: current_user.id)
  end
end
