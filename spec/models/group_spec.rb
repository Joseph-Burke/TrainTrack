require 'rails_helper'

RSpec.describe Group, type: :model do
  context 'validation' do
    subject do
      described_class.new(
        name: 'Exercise',
        user_id: 1
      )
    end

    it 'is valid with requirements' do
      expect(subject).to be_valid
    end

    it 'is invalid without a name present' do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid with a non-unique name' do
      Group.create(name: 'A Taken Group Name', user_id: 1)
      subject.name = Group.last.name
      expect(subject).not_to be_valid
    end
  end
end
