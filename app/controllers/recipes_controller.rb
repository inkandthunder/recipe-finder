class RecipesController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'chocolate'
  	@courses = Recipe.for(@search_term)
  end
end
