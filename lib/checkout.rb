class Checkout

  attr_accessor :basket, :promotional_rules, :total

  def initialize(promotional_rules)
    @basket = []
    @promotional_rules = promotional_rules
    @total = 0
  end

end
