require 'product'
require 'checkout'

describe Checkout do
  subject { Checkout.new('promotion_name') }
  let(:product1) { Product.new('001', 'Very Cheap Chair', 9.25) }
  let(:product2) { Product.new('002', 'Little Table', 45) }
  let(:product3) { Product.new('003', 'Funky Light', 19.95) }

  it 'should return an empty basket when initialised' do
    expect(subject.basket).to eq([])
  end

  it 'should return a subtotal equals to 0 when itialised' do
    expect(subject.subtotal).to eq(0)
  end

  it 'checks the correct code of the first product into the basket' do
    subject.scan(product1)
    expect(subject.basket.first.code).to eq('001')
  end

  it 'checks the correct name of the first product into the basket' do
    subject.scan(product1)
    expect(subject.basket.first.name).to eq('Very Cheap Chair')
  end

  it 'checks the correct price of the first product into the basket' do
    subject.scan(product1)
    expect(subject.basket.first.price).to eq(9.25)
  end

  it 'checks if the subtotal is greater than 60 pounds' do
    subject.scan(product2)
    subject.scan(product2)
    expect(subject.spent_over_60_pounds?).to eq(true)
  end

  it 'deducts the 10% if the clients spends more than £60' do
    subject.scan(product2)
    subject.scan(product2)
    expect(subject.total).to eq(81)
  end

  it 'checks if in the basket there are 2 or more "Very Cheap Chair"' do
    subject.scan(product1)
    subject.scan(product1)
    expect(subject.two_ore_more_very_cheap_chairs?).to eq(true)
  end

  it 'changes the price of the "Very Cheap Chair" if 2 or more in the basket' do
    subject.scan(product1)
    subject.scan(product1)
    expect(subject.total).to eq(17)
  end
end
