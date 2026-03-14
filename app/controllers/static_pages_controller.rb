class StaticPagesController < ApplicationController
  def top
    @cats = Cat.all
  end
end
