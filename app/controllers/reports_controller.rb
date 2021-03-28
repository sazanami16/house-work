class ReportsController < ApplicationController
  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def report_params
    params.require(:report).permit(:message,:image).merge(user_id: current_user.id,work_id: params[:work_id])
  end
end
