class ClassroomsController < ApplicationController

  layout 'admin'
  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
    @pupils = @classroom.pupils
    @teacher = @classroom.teacher
    @date = Date.today
   @actuals = Actual.where(:date => Date.today)
   
  end

  def new
  end


  def edit
    @classroom = Classroom.find(params[:id])
    @pupils = @classroom.pupils
    @pupilid = @pupils.ids
    @teacher = @classroom.teacher
    @date = Date.today
    @actuals = Actual.where(:date => Date.today).where(:pupil_id => @pupilid)
  end

  def update


  end

  def delete
  end
end
