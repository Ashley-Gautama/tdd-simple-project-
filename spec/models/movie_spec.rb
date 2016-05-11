require 'rails_helper'

RSpec.describe Movie, type: :model do

  describe do "check model validations"

    it {"has a valid factory"
      expect(FactoryGirl.create(:movie)).to be_valid}

    it {"is invalid without a name"
      FactoryGirl.build(:movie).should have_and_belong_to_many(:actors)}

    it {"validates uniqeness of name"
        should validate_uniqueness_of(:title) }

    it {"validates uniqeness of bio"
        should validate_uniqueness_of(:description) }

    it {"validates the not uniqeness of age"
          should_not validate_uniqueness_of(:releasedate) }

    it {"is invalid without a name"
      expect(FactoryGirl.build(:movie, title: nil)).to_not be_valid}


    it {"is invalid without a bio"
      expect(FactoryGirl.build(:movie, description: nil)).to_not be_valid}

    it {"is invalid without an age"
      expect(FactoryGirl.build(:movie, releasedate: nil)).to_not be_valid}
      end

    end
