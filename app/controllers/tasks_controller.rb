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

    if @task.nil?
      render :notfound
    end
  end

  def create
    if Task.create(:chore => params[:task][:chore], :status => "Not Complete")
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @task = Task.new
  end

  def edit
    id = params[:id].to_i
    @task = Task.find(params[:id].to_i)
  end


  def update
    task = Task.find(params[:id].to_i)
    task.update(:chore => params[:task][:chore], :status => params[:task][:status] )

    redirect_to tasks_path(task)
  end

  def completed
    task = Task.find(params[:id].to_i)

    if task.completion_date
      task.completion_date = nil
      task.status = "Not Complete"
    else
      task.completion_date = Date.today
      task.status = "Complete"
    end
    task.save

    redirect_to tasks_path


  end

  def destroy
    task = Task.find(params[:id].to_i)
    task.destroy

    redirect_to root_path
  end
end
