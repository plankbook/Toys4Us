class ToysController < ApplicationController
  def index
    @user_toys = Toy.where(user: current_user)
    @toy = Toy.new
    @toy.user = current_user
  end

  def show
    @toy = Toy.find(params[:id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.toy = @toy
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
    @toy.photos.attach(params[:photos])
    if @toy.update(toy_params)
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
