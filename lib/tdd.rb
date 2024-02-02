class Array

    def my_uniq
        uniques = []
        self.each {|ele| uniques << ele unless uniques.count(ele) > 0 }
        uniques
    end

    def two_sum
        bank = {}
        pairs = []
        self.each_with_index do |num, i|
            y = 0 - num
            if bank.has_key?(y) # true, we found a pair!
                pairs << [bank[y] , i]
            else
                bank[num] = i
            end
        end
        pairs.sort!
    end
end