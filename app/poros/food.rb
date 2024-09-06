class Food 
  attr_reader :code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(attributes)
    @code = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end