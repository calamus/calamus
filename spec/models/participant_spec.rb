require 'spec_helper'

describe Participant do
  context "destruction with memberships" do
    let(:membership) { create(:membership) }
    let(:destruction) { @participant.destroy }

    before :each do
      @participant = membership.participant
    end

    it "removes the previously created membership" do
      expect { destruction }.to change {
        Membership.exists?(membership.id)
      }.from("1").to(nil)
    end
  end
end
