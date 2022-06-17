module Api::V1::Projects
  class ProjectsController < ApiController
    def index
      # @projects = Project.all
      # render json: @projects, status: :ok
    end
  
    def create
      endpoint operation: Api::V1::Projects::Operation::Create
    end
  
    def show
    end
  
    def update
    end
  
    def destroy
    end
  end
end
