class WorksController < ApplicationController

  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @work = Work.find(params[:id])
  end




  private

  def work_params
    params.require(:work).permit(:name, :weight, :rule)
  end
end
