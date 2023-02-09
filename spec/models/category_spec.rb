# frozen_string_literal: true

require "rails_helper"

RSpec.describe Category, type: :model do
  describe "association" do
    it { should have_many(:movies) }
  end

  describe "validation" do
    it { should validate_presence_of(:name) }
  end
end
