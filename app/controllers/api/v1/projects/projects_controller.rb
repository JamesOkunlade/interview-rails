module Api::V1::Projects
  class ProjectsController < ApiController
    def index
      # @projects = Project.all
      # render json: @projects, status: :ok

      endpoint operation: Api::V1::Projects::Operation::Index do |ctx|
        render json: ctx[:model]
      end
    end
  
    def create
      endpoint operation: Api::V1::Projects::Operation::Create
    end
  end
end
