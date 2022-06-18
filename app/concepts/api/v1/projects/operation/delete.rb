module Api::V1::Projects::Operation
  class Delete < ApplicationOperation
    step Model(Project, :find_by)
    step :delete

    def delete(ctx, **)
      ctx[:model].destroy
    end
  end
end
