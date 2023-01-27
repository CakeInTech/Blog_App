require 'rails_helper'

RSpec.describe User, type: :model do 
  describe 'validations' do 
    it { should validate_presence_of(:name)}
    it { should validate_numericality_of(:posts_counter).is_greater_than_or_equal_to(0) }
  end
end
