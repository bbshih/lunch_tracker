class LunchesController < ApplicationController
	def index
	end

	def new
		@lunch = Lunch.new
	end

	def create
		@lunch = Lunch.new(params[:lunch])
		if @lunch.save
			redirect_to @lunch, :notice => "Lunch has been created."
		else
			flash[:alert] = "Lunch has not been created."
			render :action => "new"
		end
	end

	def show
		@lunch = Lunch.find(params[:id])
	end

end
