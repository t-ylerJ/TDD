require 'tdd'

describe "tdd" do
  describe '#my_uniq' do
  
    # it "raises error if not an array" do
    # expect {"hello".my_uniq}.to raise_error(NoMethodError)
    # end
    
    it "returns a new array" do
      arr = [1, 2, 1, 2, 3]
      expect(arr.object_id).to_not be(arr)
      arr.my_uniq
    end

    it "should return only the unique elements from the original array" do
      expect([1, 2, 1, 2, 3].my_uniq).to eq([1, 2, 3])
      expect(["a", "a", "b", "c", "c"].my_uniq).to eq( ["a","b","c"] )
    end

    it "should not use built in Array#uniq method" do
      arr = [1, 2, 1, 2, 3]
      expect(arr).to_not receive(:uniq)
      arr.my_uniq
    end
  end

  describe "#two_sum" do
    it "finds all pairs of indices whose values sum to zero" do
      expect( [1, 4, 3, -4, 0, 1].two_sum ).to eq( [[1, 3]] )
    end

    it "finds multiple pairs in order" do
      expect( [-1, 0, 2, -2, 1].two_sum ).to eq( [[0, 4], [2, 3]] )
    end

    it "returns an empty array if no pairs are found" do
      expect([1, 13, -5, 3].two_sum).to eq([])
    end

    it "considers pairs of zeroes" do
      expect([0, 1, 2, 0].two_sum).to eq( [[0,3]] )
    end
  end

  describe "#my_transpose" do
    let(:input){[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
    let(:expected){[[0, 3, 6], [1, 4, 7], [2, 5, 8]]}

    it "should return a new matrix with it's rows and columns switched" do
      expect(input.my_transpose).to eq(expected)
    end

    it "should not call the built in Array#transpose method" do
      expect(input).to_not receive(:transpose)
      input.my_transpose
    end
    
  end

end


#does not call built in transpose method
#should return matrix with rows & cols swapped
#