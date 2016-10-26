class ProductController < ApplicationController
  def index
  end

  def send_code
    @code = params[:code]
    ActionCable.server.broadcast "code_channel", message: @code
  end
end
