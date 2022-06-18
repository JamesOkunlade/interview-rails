module Api::V1::Projects::Operation
  class Update < ApplicationOperation
    step Model(Project, :find_by)
    step Contract::Build(constant: Api::V1::Projects::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()
  end
end

