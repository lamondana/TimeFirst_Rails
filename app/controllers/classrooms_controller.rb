class ClassroomsController < ApplicationController

  layout 'admin'
  def index
    @classrooms = Classroom.all

  end

  def show
    @classroom = Classroom.find(params[:id])
    @pupils = @classroom.pupils
    @teacher = @classroom.teacher
  end

  def new
  end



  def edit

  end

  def delete
  end
end
