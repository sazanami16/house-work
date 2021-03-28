class NicesController < ApplicationController
  def create
    nice = Nice.new(user_id: current_user.id,report_id: params[:report_id])
    nice.save()
    redirect_to root_path
  end

  def destroy
    nice = Nice.find_by(user_id: current_user.id,report_id: params[:report_id])
    nice.destroy
    redirect_to root_path
  end

end
