class TasksController < ApplicationController
  def index
    @tasks = Task.private.paginate(page: params[:page], per_page: 3)
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

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: "Task deleted!"
  end

  def task_params
    params.required(:task).permit(:name, :email, :owner, :priority, :deadline, :private)
  end
end
