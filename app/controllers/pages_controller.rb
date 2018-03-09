class PagesController < ApplicationController
	def home
		@todo = Todo.new
		@cats = Cat.all
		@users = User.all
		@todos =  Todo.all 
	end

end