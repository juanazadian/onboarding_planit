# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @providers = []
    @categories = Category.all
    @providers = if params[:category]
                   Provider.where(category_id: params[:category].to_i)
                 else
                   Provider.all
                 end
  end
end
