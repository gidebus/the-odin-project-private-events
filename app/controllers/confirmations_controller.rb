class ConfirmationsController < ApplicationController

  def create
    event = Event.find(params[:attended_event_id])
    user = User.find(params[:event_attendee_id])
    @confirmation = Confirmation.new(event_attendee_id: user.id, attended_event_id: event.id)
    redirect_to root_path, notice: "You are going to this event!" if @confirmation.save
  end

  def destroy
    @confirmation = Confirmation.find(params[:id])
    @confirmation.destroy
    flash[:success] = "You were unregistered to this event."
    redirect_to root_path
  end

  def confirmation_params
    params.require(:confirmation).permit(:event_attendee_id, :attended_event_id)
  end
end
