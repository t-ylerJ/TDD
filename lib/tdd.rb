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

    def my_transpose
      new_matrix = []
      (0...self.length).each do |i|
        new_row = []
        self.each do |row|
          new_row << row[i]
        end
        new_matrix << new_row
      end
      new_matrix
    end

    #takes in arr 
    #days = index
    #prices = values @indices
    #we want lowest value and then greatest difference in values
    [$1, $2, $5, $3, $4]
     self do each_with_index |n1, i1|
      self do each_with_index |n2, i2|
        if i2 > i1 && n2 
          
       

  end
