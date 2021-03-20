class WorksController < ApplicationController
  def index
    @reports = Report.find(1)
    @work = Work.find(1)
    @nices = Nice.count
    @bads = Bad.count
  end
end
