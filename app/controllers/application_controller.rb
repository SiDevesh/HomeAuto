class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def timenow
  	render json:  (Time.now+19800).strftime('%H')+":"+(Time.now+19800).strftime('%M')
  end

end
