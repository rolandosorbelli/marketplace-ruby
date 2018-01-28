require_relative 'product'

class Checkout

  attr_accessor :basket, :promotional_rules, :total

  def initialize(promotional_rules)
    @basket = []
    @promotional_rules = promotional_rules
    @total = 0
  end

  def scan(product = Product.new)
    @basket << product
    @total += product.price
  end

end
