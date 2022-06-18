RSpec.describe Api::V1::Projects::Operation::Create do
  subject(:result) { described_class.call(params: params) }

  let(:name) { 'First project' }
  let(:account_id) { create(:account).id }
  let(:params) { { name: name, account_id: account_id } }
  let(:invalid_params) { { account_id: account_id } }

  describe 'Success' do
    it 'creates a project' do
      expect(result[:model]).to be_persisted
      expect(result).to be_success
    end
  end

  describe 'Fail' do
    it 'fails without the name param' do
      result = described_class.call(params: invalid_params)
      expect(result.success?).to eq(false)
    end
  end
end

RSpec.describe Api::V1::Projects::Operation::Index do
  subject(:result) { described_class.call }

  let!(:projects) { create_list(:project, 10) }

  describe 'Success' do
    it 'returns list of projects' do
      expect(result[:model].size).to eql(10)
      expect(result).to be_success
    end
  end
end

# RSpec.describe Api::V1::Projects::Operation::Update do
#   subject(:result) { described_class.call(params: params) }

#   let(:name) { 'New project' }
#   let(:account_id) { create(:account).id }
#   let!(:project) { create :project, name: name, account_id: account_id}
#   let(:params) { { name: "New project name" } }
#   let(:invalid_params) { { name: 123 } }

#   # describe 'Success' do
#   #   it 'updates a project' do
#   #     # binding.pry
#   #     expect(result[:model]).to be_persisted
#   #     expect(result).to be_success
#   #   end
#   # end

#   # describe 'Fail' do
#   #   it 'fails with wrong type' do
#   #     result = described_class.call(params: invalid_params)
#   #     expect(result.success?).to eq(false)
#   #   end
#   # end
# end
