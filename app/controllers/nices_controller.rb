class NicesController < ApplicationController
  def create
    nice = Nice.create([user_id: 1,report_id: 1])
    redirect_to "/"
  end

  def destroy
    nice = Nice.find(1)
    nice.destroy
    redirect_to "/"
  end
end
