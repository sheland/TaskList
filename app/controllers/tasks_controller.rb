TASKS = {
  { Chore: "Garbage", status: ["Complete", "Edit", "Delete"]};
  { Chore: "Laundry", status: ["Complete", "Edit", "Delete"]};
  { Chore: "Dishes", status: ["Complete", "Edit", "Delete"]};
}

class TasksController < ApplicationController
  def index
    @tasks = TASKS
  end
end
