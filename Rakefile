desc 'Run test data for Vinterior Online Marketplace'

task :test_data do
  project_root = File.dirname(File.absolute_path(__FILE__))
  Dir.glob(project_root + '/lib/*') { |file| require file }

  item1 = Product.new('001', 'Very Cheap Chair', 9.25)
  item2 = Product.new('002', 'Little Table', 45)
  item3 = Product.new('003', 'Funky Light', 19.95)

  promotional_rules = %w[ten_percent_off_discount very_cheap_chair_discount]

  puts 'Test data'
  puts '---------'

  # Test data 1
  co1 = Checkout.new(promotional_rules)
  co1.scan(item1)
  co1.scan(item2)
  co1.scan(item3)
  price = co1.total

  puts 'Basket: ' + item1.code + ', ' + item2.code + ', ' + item3.code
  puts 'Total price expected: £' + price.to_s
  puts

  # Test data 2
  co2 = Checkout.new(promotional_rules)
  co2.scan(item1)
  co2.scan(item3)
  co2.scan(item1)
  price = co2.total

  puts 'Basket: ' + item1.code + ', ' + item3.code + ', ' + item1.code
  puts 'Total price expected: £' + price.to_s
  puts

  # Test data 3
  co3 = Checkout.new(promotional_rules)
  co3.scan(item1)
  co3.scan(item2)
  co3.scan(item1)
  co3.scan(item3)
  price = co3.total

  puts 'Basket: ' + item1.code + ', ' + item2.code + ', ' + item1.code + ', ' + item3.code
  puts 'Total price expected: £' + price.to_s
  puts
end
