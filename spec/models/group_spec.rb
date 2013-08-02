require 'spec_helper'

describe Group do
  context "destruction with memberships" do
    let(:membership) { create(:membership) }
    let(:destruction) { @group.destroy }

    before :each do
      @group = membership.group
    end

    it "removes the previously created membership" do
      expect { destruction }.to change {
        Membership.exists?(membership.id)
      }.from("1").to(nil)
    end
  end
end
