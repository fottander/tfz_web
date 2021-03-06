require 'rails_helper'

RSpec.describe News, type: :model do
  describe 'DB table' do
    it {is_expected.to have_db_column :title}
    it {is_expected.to have_db_column :content}
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:news)).to be_valid
    end
  end
end
