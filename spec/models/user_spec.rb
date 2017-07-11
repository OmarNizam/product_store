require 'rails_helper'

RSpec.describe User, type: :model do


  describe "#full_name" do
    let(:profile1) { build :profile, first_name:"Bla", last_name:"BlaBla"}
    let(:user1) { create :user, profile: profile1}

    it "shows first and last name of a given user" do
      expect(user1.full_name).to eq("Bla BlaBla")
    end
  end

  describe "has_profile" do
    let(:profile1) { build :profile }
    let(:user1) { create :user, profile: profile1}

    it "checks if a given user has a valid profile" do
      expect(user1.has_profile?).to eq(true)
    end
  end

end
