require 'piggy_bank'

describe PiggyBank do
  it 'can put coins in a new piggy bank' do
    #arrange
    piggy_bank = PiggyBank.new
    #act
    expect do
      piggy_bank.put_coins(10)
    end.to_not raise_error
    #assert
  end

  # it 'it does not return an error when it runs' do
  #   expect do
  #     piggy_bank = PiggyBank.new
  #     piggy_bank.shake
  #   end.to_not raise_error
  # end

  it 'will not shake if there is no money in it' do
    piggy_bank = PiggyBank.new
    expect(piggy_bank.shake).to eq(nil)
  end

  it 'will shake if there is money in it' do
    piggy_bank = PiggyBank.new
    piggy_bank.put_coins(10)
    expect(piggy_bank.shake).to eq('cling')
  end

  it "can break the piggy bank and get the user's coins back" do
    piggy_bank = PiggyBank.new
    piggy_bank.put_coins(10)
    expect(piggy_bank.break).to eq(10)
  end

  it "will have zero coins left after we break it" do
    piggy_bank = PiggyBank.new
    piggy_bank.put_coins(10)
    piggy_bank.break
    expect(piggy_bank.coins).to eq(0)
  end
end

