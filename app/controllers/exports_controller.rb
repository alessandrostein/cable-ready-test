# frozen_string_literal: true

class ExportsController < ApplicationController
  def index
    @exports ||= Export.all.order(created_at: :desc)
  end
end
