# frozen_string_literal: true

class Account < ApplicationRecord
  has_secure_password
  has_one :user, dependent: :destroy
  has_many :projects, dependent: :destroy
end
