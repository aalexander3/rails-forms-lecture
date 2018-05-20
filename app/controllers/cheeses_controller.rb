class CheesesController < ApplicationController

  before_action :set_cheese, only: [:show, :edit, :delete, :update]

  def index
    @cheeses = Cheese.all
  end

  def new
  end

  def create
    @cheese = Cheese.new
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

end
