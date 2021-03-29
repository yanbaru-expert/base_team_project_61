class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    Task.create(user_params)
  end

  private
    def user_params
      params.require(:task).permit(:title, :contents)

    end
end