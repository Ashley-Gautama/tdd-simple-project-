require 'rails_helper'
RSpec.describe Actor, type: :model do

  describe do "check model validations"
    it {"has a valid factory"
      FactoryGirl.build(:actor).should be_valid}

    it {"is invalid without a name"
      FactoryGirl.build(:actor, name: nil).should_not be_valid}


    it {"is invalid without a bio"
      FactoryGirl.build(:actor, bio: nil).should_not be_valid}

    it {"is invalid without an age"
        FactoryGirl.build(:actor, age: nil).should_not be_valid}
      end
    end
