module Api::V1::Projects::Operation
  class Show < ApplicationOperation
    step Model(Project, :find_by)
    step Macro::Renderer(serializer: Api::V1::Lib::Serializer::Project)
  end 
end
