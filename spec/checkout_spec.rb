require 'product'
require 'checkout'

describe Checkout do
  subject {Checkout.new("promotion_name")}

  it 'should return an empty basket when itialised' do
    expect(subject.basket).to eq([])
  end

  it 'should return an a total equals to 0 when itialised' do
    expect(subject.total).to eq(0)
  end
end
