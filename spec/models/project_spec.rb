require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'model fields' do
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:account_id).of_type(:uuid) }
  end

  describe 'model relations' do
    it { is_expected.to belong_to(:account) }
  end
end
