class PingController < ActionController::Metal
  def index
    self.response_body = 'PONG'
  end
end