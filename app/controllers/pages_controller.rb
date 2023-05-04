class PagesController < ApplicationController
  def home
    @available_toys = Toy.where(listed: true)
  end
end
