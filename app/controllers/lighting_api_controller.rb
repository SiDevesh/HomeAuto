class LightingApiController < ApplicationController
	before_action :set_value

	def get_status
		render json: @value.light_status
	end

	def post_status
		if params[:status] == "on"
			@value.light_status = true
			@value.save
			render json: @value.light_status
		else
			@value.light_status = "off"
			@value.save
			render json: @value.light_status
		end
	end

	def post_status_web
		if params[:status] == "on"
			@value.light_status = true
			@value.save
			redirect_to root_path
		else
			@value.light_status = "off"
			@value.save
			redirect_to root_path
		end
	end

	private

	def set_value
		@value = Value.first
	end

end