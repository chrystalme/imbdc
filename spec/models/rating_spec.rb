# frozen_string_literal: true

require "rails_helper"
require "category"

RSpec.describe Rating, type: :model do
  describe "association" do
    it { should belong_to(:movie) }
    it { should belong_to(:user) }
  end

  describe "validation" do
    it { should validate_presence_of(:score) }
    it { should validate_presence_of(:score) }
    it { should validate_numericality_of(:score)
      .is_greater_than_or_equal_to(1)
      .is_less_than_or_equal_to(10)
  }
  end
end
