class ActualsController < ApplicationController
  layout 'admin'
  def index
    @actuals = Actual.all
  end

  def show
      @pupils = Pupil.all
      @actual = Actual.all
      @pupilsInClass = Pupil.where(:id == :pupil_id)
  end

  def edit
    @actual = Actual.find(params[:id])
  end

  def update
  end

  def new
    @actual = []
    5.times do
      @actual << Actual.new
    end
    @p = Actual.joins(:pupil).where(:pupils => {:classroom => 1}, :actuals => {:date => Date.today})

  end

  def create
      @p = Actual.joins(:pupil).where(:pupils => {:classroom => 1}, :actuals => {:date => Date.today})
    @actual = Actual.new(actual_params)
    if @actual.save
      flash[:notice] = "Actual created successfully."
      redirect_to(actuals_path)
    else
      render("new")
    end
   end


  def delete
  end

private

def actual_params
   params.require(:actual).permit(:attendance, :pupil_id, :date, :circumstances)
end

end
