require "./spec_helper"

describe "Local Search" do
	describe "#insertion" do
		it "should works" do
			insertion([1, 2, 3, 4, 5, 6, 7], 1, 4).should eq([1, 5, 2, 3, 4, 6, 7])
		end
	end

	describe "#inverse" do
		it "should works" do
			inverse([1, 2, 3, 4, 5, 6, 7], 1, 4).should eq([1, 5, 4, 3, 2, 6, 7])
		end
	end
end
