class CatsController < ApplicationController
  def index
  @cats = cats.all
  end

  def new
    @cats = Cat.new
  end

  def create
    @cats = cats.new(cats_params)
    @cats.save
  end

  private
def cats_params
  params.require(:cat).permit(:name, :birthday)
end
end
