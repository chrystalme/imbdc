# frozen_string_literal: true

require "rails_helper"

RSpec.describe Movie, type: :model do
  describe "association" do
    it { should belong_to(:category) }
    it { should belong_to(:publisher).class_name("User") }
    it { should have_many(:ratings) }
    it { should have_many(:raters).through(:ratings).source(:user) }
  end

  describe "validation" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:publisher) }
    it { should validate_presence_of(:category) }
    it { should validate_length_of(:text).is_at_least(10) }
  end
end
