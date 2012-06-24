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
      subject.day.should == Time.current.to_date
    end
    it 'should be valid' do
      subject.valid?
    end
    describe 'alarm testing' do
      before :each do
        subject.alarm_time = alarm_time
      end
      context 'alarm in past' do
        let(:alarm_time) { 1.hour.ago }
        it 'should have past alarm time' do
          subject.is_past_alarm?.should equal true
        end
      end
      context 'alarm in future' do
        let(:alarm_time) { 1.hour.from_now }
        it 'should have past alarm time' do
          subject.is_past_alarm?.should equal false
        end
      end

    end
  end
end
