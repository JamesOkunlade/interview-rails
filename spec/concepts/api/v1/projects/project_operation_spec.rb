RSpec.describe Api::V1::Projects::Operation::Create do
  subject(:result) { described_class.call(params: params) }

  let(:name) { 'project_1' }
  let(:account_id) { create(:account).id }
  let(:params) { { name: name, account_id: account_id } }

  describe 'Success' do
    it 'creates a project' do
      expect(result[:model]).to be_persisted
      expect(result).to be_success
    end
  end

  describe 'Fail' do
    it 'fails without name' do
      result = described_class.call(params: params.except(:name))
      expect(result.success?).to eq(false)
    end
  end
end