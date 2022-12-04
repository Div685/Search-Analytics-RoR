require 'rails_helper'

RSpec.describe Search, type: :model do
  describe 'Validations' do
    context 'when length of Query is greater less 3 and greater than 90' do
      it { should validate_length_of(:query).is_at_most(90) }
      it { should validate_length_of(:query).is_at_least(3) }
    end
  end
end
