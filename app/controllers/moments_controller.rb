class MomentsController < ApplicationController

  def create
    @moment = Moment.new(moment_params)
    @moment.user = current_user
    @moment.event = Event.find(params[:event_id])
    @moment.save
    redirect_to event_path(Event.find(params[:event_id]))
  end

  def destroy
    @moment = Moment.find(params[:id])
    @moment.destroy
  end

  private

  def moment_params
    params.require(:moments).permit(:content)
  end
end