require 'rails_helper'

RSpec.describe Profile, type: :model do

  describe "validations" do
      it { is_expected.to validate_presence_of(:first_name) }
      it { is_expected.to validate_presence_of(:last_name) }
   end

  describe "#full_name" do
    let(:profile1) { build :profile, first_name:"Bla", last_name:"BlaBla"}
    let(:user1) { create :user, profile: profile1}

    it "shows first and last name of a given profile" do
      expect(profile1.full_name).to eq("Bla BlaBla")
    end
  end
end
