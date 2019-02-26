class TasksController < ApplicationController
  before_action :find_task, only: [:show, :destroy, :edit, :update]

  # skip_before_action :authenticate_user!

  def index
    @tasks = policy_scope(Task)
  end

  def show
    authorize @task
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user

    if @task.save
      redirect_to task_path(@task), notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to task_path(@task), notice: 'Task was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :start_date, :end_date, :start_time, :end_time, :category)
  end
end
