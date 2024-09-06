class Food 
  attr_reader :code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(attributres)
    @code = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end