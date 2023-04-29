class ToysController < ApplicationController
  def index
    @toys = current_user.toys.all
  end

  def show
    @toy = current_user.toys.find(params[:id])
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    @toy.user = current_user
    @toy.save
    redirect_to toy_path(@toy)
  end

  private

  def toy_params
    params.require(:toy).permit(:name, :description, :price)
  end
end
