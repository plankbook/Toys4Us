class ToysController < ApplicationController
  def index
    @toys = current_user.toys.all
  end

  def show
    @toy = current_user.toys.find(params[:id])
  end

  def new
    @toy = Toy.new
    @toy.user = current_user
  end

  def create
    @toy = Toy.new(toy_params)
    @toy.user = current_user
    if @toy.save
      redirect_to toy_path(@toy)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    @toy = Toy.find(params[:id])
  end

  def update
    @toy = Toy.find(params[:id])
    @toy.update(toy_params)
    if @toy.save
      redirect_to toy_path(@toy)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy

    redirect_to toys_path, status: :see_other
  end

  private

  def toy_params
    params.require(:toy).permit(:name, :description, :price, photos: [])
  end
end
