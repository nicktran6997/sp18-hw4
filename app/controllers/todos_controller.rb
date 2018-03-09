class TodosController < ApplicationController
	def new
		@todo = Todo.new
	end
	def create
		@todo = Todo.create(todos_params)
		redirect_to todos_path
	end
	def index
		@todos = Todo.all
	end

	private

	def todos_params
		params.permit(:task)
	end
end