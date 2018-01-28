require 'product'
require 'checkout'

describe Checkout do
  subject {Checkout.new('promotion_name')}
  let(:product1) {Product.new('001', 'Very Cheap Chair', 9.25)}

  it 'should return an empty basket when initialised' do
    expect(subject.basket).to eq([])
  end

  it 'should return an a total equals to 0 when itialised' do
    expect(subject.total).to eq(0)
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
end
