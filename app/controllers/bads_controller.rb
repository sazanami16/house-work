class BadsController < ApplicationController
  def create
    @bad = Bad.new(user_id: current_user.id,report_id: params[:report_id])
    if @bad.save()
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    bad = Bad.find_by(user_id: current_user.id,report_id: params[:report_id])
   if bad.destroy
    redirect_to root_path
   else
    redirect_to root_path
   end
   
  end
end
