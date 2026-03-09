class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      flash[:alert] = "ねこが登録されました"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :birthday)
  end
end
