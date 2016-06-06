class MixController < ApplicationController
	def index
		@mixes = Mix.all
	end
end
