class FoodsController < ApplicationController
  def index
    query = params[:q]
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.food[:key]
    end
    response = conn.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{query}")
    json = JSON.parse(response.body, symbolize_names: true)
    @food_details = json[:results].map do |food_details|
      Food.new(movie_details)
    end
  end
end