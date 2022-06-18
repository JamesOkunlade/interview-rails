module Api::V1::Projects::Operation
  class Index < ApplicationOperation
    step :find_all 
    
    def find_all(ctx, **)
      ctx[:model] = ::Project.all
    end
  end 
end
