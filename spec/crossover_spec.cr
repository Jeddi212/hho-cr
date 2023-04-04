require "./spec_helper"

describe "PMX" do
  it "should works" do	
		pmx_core(
			[1, 2, 3, 4, 5, 6, 7],
			[5, 4, 6, 7, 2, 1, 3],
			2, 5
		).should eq(
			{[3, 5, 6, 7, 2, 1, 4],
			[2, 7, 3, 4, 5, 6, 1]}
		)
  end
end
