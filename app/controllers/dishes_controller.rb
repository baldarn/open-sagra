# frozen_string_literal: true

class DishesController < ApplicationController
  before_action :set_dish, only: %i[edit update destroy]

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def edit; end

  def create
    @dish = Dish.new(dish_params)

    if @dish.save
      redirect_to dishes_url, flash: { success: I18n.t('dishes.created') }
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @dish.update(dish_params)
      redirect_to dishes_url, flash: { success: I18n.t('dishes.updated') }
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @dish.destroy!

    redirect_to dishes_url, flash: { success: I18n.t('dishes.destroyed') }
  end

  private

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :price, :course)
  end
end
