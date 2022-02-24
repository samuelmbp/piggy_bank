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
end
