require_relative 'product'

class Checkout

  attr_accessor :basket, :promotional_rules, :subtotal

  def initialize(promotional_rules)
    @basket = []
    @promotional_rules = promotional_rules
    @subtotal = 0
  end

  def scan(product = Product.new)
    @basket << product
    @subtotal += product.price
  end

  def spent_over_60_pounds?
    @subtotal > 60
  end

  def ten_percent_off_discount
    if spent_over_60_pounds? == true
      @subtotal *= 0.9
    end
  end

  def total
    ten_percent_off_discount
    total = @subtotal
    return total
  end

end
