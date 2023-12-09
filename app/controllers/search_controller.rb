class SearchController < ApplicationController
  # this method is to retrieve the matching quote record corresponding
  # to the search result by category_name
  def index
    category_query = params[:category_query]
    if category_query.present?
    @quotematch = Quote.joins(:quote_categories, :categories).where("categories.cat_name LIKE ?", "%#{category_query}%").where(is_public: true).distinct
    end
  end
end
