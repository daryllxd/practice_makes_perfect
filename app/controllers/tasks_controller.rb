class TasksController < ApplicationController
  def index
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: "Created!"
    else
      redirect_to tasks_path, notice: @task.errors
    end
  end

  def task_params
    params.required(:task).permit(:name, :email, :owner, :priority, :deadline, :private)
  end
end
