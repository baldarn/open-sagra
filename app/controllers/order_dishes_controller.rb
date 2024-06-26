# frozen_string_literal: true

class OrderDishesController < ApplicationController
  before_action :set_order

  def new
    @order_dish = @order.order_dishes.build(quantity: 1)
  end

  def edit
    @order_dish = OrderDish.find(params[:id])
  end

  def create
    @order_dish = @order.order_dishes.build(order_dish_params)

    if @order_dish.save
      respond_to do |format|
        format.html { redirect_to edit_order_url(@order), flash: { notice: I18n.t('orders.created') } }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @order_dish = OrderDish.find(params[:id])

    if @order_dish.update(order_dish_params)
      respond_to do |format|
        format.html { redirect_to edit_order_url(@order), flash: { notice: I18n.t('orders.updated') } }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @order_dish = OrderDish.find(params[:id])
    @order_dish.destroy!

    respond_to do |format|
      format.html { redirect_to edit_order_url(@order), flash: { notice: I18n.t('orders.destroyed') } }
      format.turbo_stream
    end
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end

  def order_dish_params
    params.require(:order_dish).permit(:dish_id, :quantity, :price, :notes)
  end
end
