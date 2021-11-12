class TaskController < ApplicationController
    def create
        task = params[:task]
        Task.create(name: task.name, date: task.date, )
    end 
    def show
        tasks = Task.all
        tasks.to_json
    end 
    def delete
        be_deleted_task = params[:task]
        Task.delete(id: be_deleted_task.id)
    end
end
