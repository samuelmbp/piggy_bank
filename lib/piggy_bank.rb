

class PiggyBank

    attr_reader :coins

    def initialize
        @coins = 0
    end

    def put_coins(coins_to_add)
        @coins += coins_to_add
    end

    def shake
        if @coins > 0
            return 'cling'
        end
    end

    def break
        return_coins, @coins = @coins, 0
        return return_coins
    end
end
