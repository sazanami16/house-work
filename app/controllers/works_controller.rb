class WorksController < ApplicationController
  def index
    @reports = Report.find_by(params[:id])
    @work = Work.find_by(params[:id])
    @nices = Nice.count
    @bads = Bad.count
  end
end
