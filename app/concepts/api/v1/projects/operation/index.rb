module Api::V1::Projects::Operation
  class Index < ApplicationOperation
    step :find_all 
    step Macro::Renderer(serializer: Api::V1::Lib::Serializer::Project)

    def find_all(ctx, **)
      ctx[:model] = ::Project.all
    end
  end 
end
