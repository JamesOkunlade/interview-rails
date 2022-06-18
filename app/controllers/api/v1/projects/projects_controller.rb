module Api::V1::Projects
  class ProjectsController < ApiController
    def index
      endpoint operation: Api::V1::Projects::Operation::Index
    end

    def create
      endpoint operation: Api::V1::Projects::Operation::Create
    end
    
    def show
      endpoint operation: Api::V1::Projects::Operation::Show
    end
    
    def update
      endpoint operation: Api::V1::Projects::Operation::Update
    end
    
    def destroy
      endpoint operation: Api::V1::Projects::Operation::Delete
    end
  end
end
