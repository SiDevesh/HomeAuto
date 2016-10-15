class WeatherApiController < ApplicationController
	before_action :set_value

	def get_weather
		render json: @value.weather_temp
	end

	private

	def set_value
		@value = Value.first
	end

end