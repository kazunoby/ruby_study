require_relative 'yakushoku'
require_relative 'shunin'
require_relative 'tanto'
require_relative 'bucho'

describe Shunin do
  let(:shunin) { Shunin.new }
  it '主任の交通費精算' do
    expect(shunin.seisan).to eq 17450
  end
end
describe Tanto do
  let(:tanto) { Tanto.new }
  it '担当の交通費精算' do
    expect(tanto.seisan).to eq 15620
  end
end
describe Bucho do
  let(:bucho) { Bucho.new }
  it '部長の交通費精算' do
    expect(bucho.seisan).to eq 23690
  end
end