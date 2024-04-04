require "./caesar-ruby/caesar"

describe Solution do
    describe "#shift_places" do
    letters = ["a","A","b","B","c","C","d","D","e","E","f","F","g","G","h","H","i","I","j","J","k","K", "l","L","m","M","n","N","o","O","p","P","q","Q","r","R","s","S","t","T","u","U","v","V","w","W","x", "X","y","Y","z","Z"]
    solution = Solution.new

      it "shifts places correctly with wraparound" do
        expect(solution.shift_places("a", 2, letters)).to eql("y")
      end

      it "ignores characters not in the alphabet" do
        expect(solution.shift_places("!bc??", 1, letters)).to eql("!ab??")
      end

      it "returns empty string when shifting an empty string" do
        expect(solution.shift_places("", 75, letters)).to eql("")
      end

      it "moves to the right if negative number given" do
        expect(solution.shift_places("aab", -3, letters)).to eql("dde")
      end

      it "maintains case sensitivity" do
        expect(solution.shift_places("AbC", 2, letters)).to eql("YzA")
      end

      it "applies no transformation when number is zero" do
        expect(solution.shift_places("AbC?eth!·$", 0, letters)).to eql("AbC?eth!·$")
      end
    end
end