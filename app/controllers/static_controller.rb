class StaticController < ApplicationController
	before_action :set_value

	def dash

	end

	def lightings

	end

	private

	def set_value
		@value = Value.first
	end

end