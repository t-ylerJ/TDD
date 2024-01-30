require 'tdd'

describe "tdd" do
 describe 'my_uniq' do
  subject(:array) {[1, 2, 1, 2, 3]}
    # it "raises error if not an array" do
    # expect {"hello".my_uniq}.to raise_error(NoMethodError)
    # end
    
    it "returns a new array" do
      expect(array.my_uniq).to_not be(array)
    end

    it "should return only the unique elements from the original array" do
      expect(array.my_uniq).to be([1, 2, 3])
    end


  end
end

#accepts arr
#raise err if another type

#remove dupes
#count = exactly  1


#returns new arr
#return uniq eles
#return in order they appeared
#origin i of 1 < index 2 or 3