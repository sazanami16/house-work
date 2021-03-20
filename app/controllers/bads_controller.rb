class BadsController < ApplicationController
  def create
    bad = Bad.create([user_id: 1,report_id: 1])
    redirect_to "/"
  end

  def destroy
    bad = Bad.find(1)
    bad.destroy
    redirect_to "/"
  end
end
