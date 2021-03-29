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

  private
    def user_params
      params.require(:task).permit(:title, :contents)
    end
end
