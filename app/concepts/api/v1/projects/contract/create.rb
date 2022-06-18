module Api::V1::Projects::Contract
  class Create < ApplicationContract
    property :name
    property :account_id

    validation do
      required(:name).filled(min_size?: 3)
      required(:account_id).filled
    end
  end
end
