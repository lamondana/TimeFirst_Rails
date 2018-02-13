class ClassroomsController < ApplicationController

  layout 'admin'
  def index
    @classrooms = Classroom.all

  end

  def show
    @pupils = Pupil.all
    @classroom = Classroom.find(params[:id])
    @classroom_pupils = @pupils.where(:classroom_id => @classroom.id)
    @teachers = Teacher.all
    @actual = Actual.new

end



  def new
  end



  def edit
  end

  def delete
  end
end
