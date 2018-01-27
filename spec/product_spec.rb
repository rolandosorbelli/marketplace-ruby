require 'product'

describe Product do
  subject {Product.new(001, 'Very Cheap Chair', 9.25)}

  it 'should return the code of the product' do
    expect(subject.code).to eq(001)
  end

  it 'should return the name of the product' do
    expect(subject.name).to eq('Very Cheap Chair')
  end

  it 'should return the price of the product' do
    expect(subject.price).to eq(9.25)
  end
end
