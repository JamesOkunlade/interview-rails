module Api::V1::Projects::Operation
  class Create < ApplicationOperation
    step Model(Project, :new)
    step Contract::Build(constant: Api::V1::Projects::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()
    step Macro::Renderer(serializer: Api::V1::Lib::Serializer::Project)
  end
end

