require_relative 'syunin'

describe Syunin do
  let(:syunin) { Syunin.new }
  it '主任の給料は基本給の２倍＋１。基本給が100なら給料は201' do
    expect(syunin.calculate_salary(100)).to eq 201
  end
end