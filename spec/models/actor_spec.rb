require 'rails_helper'
RSpec.describe Actor, type: :model do

  describe do "check model validations"

    it {"has a valid factory"
      expect(FactoryGirl.create(:actor)).to be_valid}

    it {"is invalid without a name"
      FactoryGirl.build(:actor).should have_and_belong_to_many(:movies)}

    it {"validates uniqeness of name"
        should validate_uniqueness_of(:name) }

    it {"validates uniqeness of bio"
        should validate_uniqueness_of(:bio) }

    it {"validates the not uniqeness of age"
          should_not validate_uniqueness_of(:age) }

    it {"is invalid without a name"
      expect(FactoryGirl.build(:actor, name: nil)).to_not be_valid}


    it {"is invalid without a bio"
      expect(FactoryGirl.build(:actor, bio: nil)).to_not be_valid}

    it {"is invalid without an age"
      expect(FactoryGirl.build(:actor, age: nil)).to_not be_valid}
      end

    end
