require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:user) { User.create(name: 'Joe') }
  context 'validation' do
    subject do
      described_class.new(
        user_id: user.id,
        name: 'Walk the dog',
        amount: 0.5,
        description: "Take the dog for a stroll around the neighbourhood"
      )
    end

    it 'is valid with requirements' do 
      expect(subject).to be_valid
    end

    it 'is invalid without a name present' do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid without a description present' do
      subject.description = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid without an amount present' do
      subject.amount = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid with a non-positive amount' do
      subject.amount = 0
      expect(subject).not_to be_valid
      subject.amount = -0.5
      expect(subject).not_to be_valid
    end

    it 'is invalid without a user_id' do
      subject.user_id = nil
      expect(subject).not_to be_valid
    end

    it 'is invalid with a description over 140 characters long' do
      subject.description = " " * 141
      expect(subject).not_to be_valid
    end

  end

end
