class Catalogue
  # def initialize
  #   @cheapest_item = nil
  # end

  def <<(product)
    #if @cheapest_item == nil || product.price < @cheapest_item.price
      @cheapest_item = product.product_name
    #end
  end

  def cheapest
    @cheapest_item
  end
end
