require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'association' do
    it { should have_many(:ratings)}
    it {should have_many(:published_movies).class_name("Movie")}
    it { should have_many(:rated_movies).through(:ratings).source(:movie)}
  end
end