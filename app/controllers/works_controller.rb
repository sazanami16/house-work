class WorksController < ApplicationController
  def index
    @works = current_user.work
    @items = Item.includes(:work)
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @work = Work.find(params[:id])
    @items = @work.items.includes(:work)
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to work_path(@work.id)
    else
      render template: 'works/edit', work: @work end
  end

  def destroy
    @work = Work.find(params[:id])
    if @work.destroy
      redirect_to root_path
    else
      render work_item_path(@work.id)
    end
  end

  private

  def work_params
    params.require(:work).permit(:name, :weight_id, :rule, :parson).merge(user_id: current_user.id)
  end
end
