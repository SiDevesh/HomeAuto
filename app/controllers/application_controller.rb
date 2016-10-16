class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def timenow
  	render json:  Time.now.strftime('%H')+":"+Time.now.strftime('%M')
  end

end
