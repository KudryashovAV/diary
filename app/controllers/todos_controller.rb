class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def show
    Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def destroy
    Todo.find(params[:id]).destroy
    redirect_to :back
  end

  def create
   @todo = Todo.new movie_params
   @todo.save
   redirect_to :back
  end

  def complete
    params[:todos_checkbox].each do |check|
       todo_id = check
       t = Todo.find_by_id(todo_id)
       t.update_attribute(:completed, true)
       
     end
    redirect_to :back
 end

private

  def movie_params
    params.require(:todo).permit(:title, :completed)
  end

end
