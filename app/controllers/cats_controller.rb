class CatsController < ApplicationController
  def index
  @cats = cats.all
  end

  def new
    @cats = Cat.new
  end

  def create
    @cats = Cat.new(cats_params)
    @cats.save
    flash[:alert] = 'ねこが登録されました'
    redirect_to root_path 
  end

  private
def cats_params
  params.require(:cat).permit(:name, :birthday)
end
end
