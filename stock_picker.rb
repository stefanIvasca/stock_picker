array_of_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(array_of_prices)
    picked_days = []
    profit = 0
    array_of_prices.each do |price|
        array_of_prices.each do |second_price|
            if (array_of_prices.index(price)<array_of_prices.index(second_price))&&array_of_prices.index(price)!=0
                if profit < second_price - price
                    profit = second_price - price
                    picked_days=[array_of_prices.index(price),array_of_prices.index(second_price)]
                end
                
            end
            
        end
    end
    puts picked_days
end

stock_picker(array_of_prices)