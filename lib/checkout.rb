require_relative 'product'

# All the logic applied to the app
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
    @subtotal *= 0.9 if spent_over_60_pounds? == true
  end

  def two_ore_more_very_cheap_chairs?
    @basket.map(&:name).count('Very Cheap Chair') >= 2
  end

  def very_cheap_chair_discount
    if two_ore_more_very_cheap_chairs? == true
      @basket.each do |item|
        item.price = 8.50 if item.name == 'Very Cheap Chair'
      end
      @subtotal = basket.map(&:price).reduce(:+)
    end
  end

  def total
    very_cheap_chair_discount
    ten_percent_off_discount
    @subtotal.round(2).to_s
  end
end
