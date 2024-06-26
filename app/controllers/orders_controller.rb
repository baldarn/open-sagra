# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :set_order, only: %i[edit update destroy]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new(date: Time.zone.now)
  end

  def edit
    @order.date ||= Time.zone.now
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to edit_order_url(@order)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @order.update(order_params)
      redirect_to edit_order_url(@order), flash: { success: I18n.t('orders.updated') }
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @order.destroy!

    redirect_to orders_url, flash: { success: I18n.t('orders.destroyed') }
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(
      :customer_name,
      order_dishes_attributes: %i[id dish_id quantity price notes _destroy]
    )
  end
end
