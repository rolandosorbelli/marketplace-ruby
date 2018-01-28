desc 'Run 1 product info'

task :product1 do
  project_root = File.dirname(File.absolute_path(__FILE__))
  Dir.glob(project_root + '/lib/*') { |file| require file }

  product1 = Product.new(0o01, 'Very Cheap Chair', 9.25)
  puts product1.code
  puts product1.name
  puts product1.price

  checkout1 = Checkout.new('promotion')
  checkout1.scan(product1)
  checkout1.scan(product1)
  checkout1.scan(product1)
  checkout1.scan(product1)
  checkout1.scan(product1)
  checkout1.scan(product1)
  checkout1.scan(product1)
  puts checkout1.basket.first.name
  puts checkout1.subtotal
  puts checkout1.total
end
