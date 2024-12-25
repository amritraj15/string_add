require 'rails_helper'

RSpec.describe StringCalculator, type: :service do
  describe ".add" do
    it "Returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end
