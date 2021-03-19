class WorksController < ApplicationController

  def new
    @work = work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end




  private

  def work_params
    params.require(:work).permit(:name, :rule, :weight).merge(user_id: current_user.id)
  end
end
