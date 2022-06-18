# frozen_string_literal: true

module Api::V1::Lib::Serializer
  class Project < ApplicationSerializer
    set_type :project
    attributes :name, :account_id, :created_at, :updated_at
  end
end
