require 'spec_helper'

describe Day do
  describe 'generated days' do
    before do
      2.times do
        FactoryGirl.create :mood
        FactoryGirl.create :activity
        FactoryGirl.create :health_level
      end
    end
    subject { Day.generate }
    it 'should have todays date' do
      subject.day == Time.current.to_date
    end
    it 'should be valid' do
      subject.valid?
    end
  end
end
