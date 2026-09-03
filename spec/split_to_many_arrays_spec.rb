require 'spec_helper'
require_relative "../split_to_many_arrays"

RSpec.describe "split to many arrays" do
    let(:numbers) { (1..125).to_a }
    let(:result) { split_to_many_arrays(numbers, 20) }

    it "splits the array into multiple arrays of specified size" do
        expect(result.length).to eq(7)
    end
end