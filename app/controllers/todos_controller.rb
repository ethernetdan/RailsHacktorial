class TodosController < ApplicationController
	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(params[:todo].permit(:title, :done))

		if @todo.save
			redirect_to "/todos"
		else
			render :new
		end
	end
end
