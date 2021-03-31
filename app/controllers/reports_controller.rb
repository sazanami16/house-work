class ReportsController < ApplicationController
  def create
    @reports = Report.new(report_params)
    @works = current_user.work
    if @reports.save
      redirect_to root_path
    else
      render template: "works/index", work: @works, report: @reports
    end
  end

  private
  def report_params
    params.require(:report).permit(:message,:image).merge(user_id: current_user.id,work_id: params[:work_id])
  end
end
