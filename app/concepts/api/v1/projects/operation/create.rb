module Api::V1::Projects::Operation
  class Create < ApplicationOperation
    step Model(Project, :new)
    step Contract::Build(constant: Api::V1::Projects::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()
  end
end
