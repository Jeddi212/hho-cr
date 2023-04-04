require "./spec_helper"

describe "RKE" do
	it "should works" do
		rke([0.1, 0.5, 0.3, 0.7, 0.2]).should eq([1, 4, 3, 5, 2])
	end
end
