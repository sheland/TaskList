# TASKS = [
#   { chore: "Garbage", status: ["Complete", "Not_Done"]},
#   { chore: "Laundry", status: ["Complete", "Not_Done"]},
#   { chore: "Dishes", status: ["Complete", "Not_Done"]}
# ]

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find(params[:id].to_i)
    console

    if @task.nil?
      render :notfound
    end
  end

  def create
    @task = Task.new(chore: params[:chore][:status], chore: params[:chore][:status])
    if @task.save

      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id].to_i)
  end


  def update
    @task = Task.find(params[:id].to_i)

    redirect_to task_path(@task)
  end

  def destroy
    task = Task.find(params[:id])
    task = destroy

    redirect_to root_path
  end

end
