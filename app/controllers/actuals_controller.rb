class ActualsController < ApplicationController
  layout 'admin'
  def index

    @p = Actual.joins(:pupil).where(:pupils => {:classroom => 1}, :actuals => {:date => Date.today})

  end

  def show

  end

  def edit
  @actuals = Actual.where(:date => Date.today)
  @actual = Actual.find(params[:id])

  end

  def update
    @actuals = Actual.where(:date => Date.today)
    actuals_params.each_pair do |key, value|
    pupil_actual = @actuals.find_by(pupil_id: value[:pupil_id])
    pupil_actual.update_attributes(value.permit!)
  end

end

  def new

  end

  def create

    date = params[:date]
    actuals = params[:actuals].values

    actuals.each do |a|
      Actual.create({
        date: date,
        pupil_id: a[:pupil_id],
        attendance: a[:attendance],
        circumstances: a[:circumstances]

      })
    end
    redirect_to classrooms_path
    #redirect_back(fallback_location: classrooms_url)
end



  def delete
  end

private

def actual_params
   params.require(:actual).permit(:attendance, :pupil_id, :date, :circumstances)
end

def actuals_params
   params.require(:actuals).permit!
end

end
