class RecipesController < ApplicationController
  def index
  	@search_term = (params[:search].to_s == '') ? 'chocolate' : params[:search]
  	@recipes = Recipe.for(@search_term)
  end
end
