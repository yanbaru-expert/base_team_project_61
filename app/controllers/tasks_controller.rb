class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    Task.create(user_params)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(user_params)
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
  end

  private
    def user_params
      params.require(:task).permit(:title, :contents)
    end
end
