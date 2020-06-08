# frozen_string_literal: true

class Export < ApplicationRecord
  enum status: [:pending, :processing, :finished, :failed]
end
