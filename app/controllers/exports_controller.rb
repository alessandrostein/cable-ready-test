# frozen_string_literal: true

class ExportsController < ApplicationController
  include CableReady::Broadcaster
  def index
    @exports ||= Export.all.order(created_at: :desc)

    cable_ready['notification_channel'].inner_html(
      selector: '#notification',
      html: 'Hello World this is the controller.'
    )
    cable_ready.broadcast

    sleep 10
  end
end
