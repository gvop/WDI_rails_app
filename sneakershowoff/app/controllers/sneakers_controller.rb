class SneakersController < ApplicationController
  before_action :set_sneaker, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index]

  def index
    @sneakers = Sneaker.all
  end

  def show
  end

  def new
    @sneaker = Sneaker.new
  end

  def edit
  end

  def create
    @sneaker = current_user.sneakers.new(sneaker_params)

    respond_to do |format|
      if @sneaker.save
        format.html { redirect_to @sneaker, notice: 'Sneaker was successfully created.' }
        format.json { render :show, status: :created, location: @sneaker }
      else
        format.html { render :new }
        format.json { render json: @sneaker.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @sneaker.update(sneaker_params)
        format.html { redirect_to @sneaker, notice: 'Sneaker was successfully updated.' }
        format.json { render :show, status: :ok, location: @sneaker }
      else
        format.html { render :edit }
        format.json { render json: @sneaker.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @sneaker.destroy
    respond_to do |format|
      format.html { redirect_to sneakers_url, notice: 'Sneaker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_sneaker
      @sneaker = Sneaker.find(params[:id])
    end

    def sneaker_params
      params.require(:sneaker).permit(:type_of, :gender, :photo_source, :user_id, :make_id, :discription, :image)
    end
end
