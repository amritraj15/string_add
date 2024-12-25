require 'rails_helper'

RSpec.describe StringCalculator, type: :service do
  describe ".add" do
    it "Returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "Returns the number itself for a single number in string" do
      expect(StringCalculator.add("1")).to eq(1)
    end
  end
end
