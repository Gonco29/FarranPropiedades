class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:query].present?
      @houses = House.search_houses(params[:query])
    else
      @houses = House.all
    end
  end
end
