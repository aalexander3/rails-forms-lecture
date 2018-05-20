class CheesesController < ApplicationController

  before_action :set_cheese, only: [:show, :edit, :delete, :update]

  def index
    @cheeses = Cheese.all
  end

  def new
    @cheese = Cheese.new
  end

  def create
    @cheese = Cheese.new(cheese_params)
    if @cheese.save
      redirect_to cheese_path(@cheese)
    else
      redirect_to cheeses_new
    end
  end

  def show
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def set_cheese
    @cheese = Cheese.find(params[:id])
  end

  def cheese_params
    params.require(:cheese).permit(:name, :age, :color)
  end

end
