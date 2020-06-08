# frozen_string_literal: true

class ExportsController < ApplicationController
  def index
    @exports = Export.all
  end

  def create; end
end
