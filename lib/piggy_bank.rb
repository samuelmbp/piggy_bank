class PiggyBank
    def initialize
        @coins = 0
    end

    def put_coins(coins_to_add)
        @coins += coins_to_add
    end

    def shake
        if @coins > 0
            puts "cling"
        end
    end
end 