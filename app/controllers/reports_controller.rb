class ReportsController < ApplicationController
  def create
    report = Report.create(report_params)
    redirect_to "/"
  end

  private
  def report_params
    params.require(:report).permit(:message,:image).merge(user_id: 1, work_id: 1)
  end
end
