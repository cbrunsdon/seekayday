require 'spec_helper'

describe ApplicationHelper do
  describe 'text_benefit_color' do
    it 'should be a valid rbg when positive' do
      text_benefit_color(10).should match /rgb\([0-9]{0,3},\d{0,3},\d{0,3}\)/
    end
    it 'should be a valid rbg when negative' do
      text_benefit_color(-10).should match /rgb\([0-9]{0,3},\d{0,3},\d{0,3}\)/
    end
  end
end
