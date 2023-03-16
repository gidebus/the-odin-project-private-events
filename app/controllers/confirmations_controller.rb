class ConfirmationsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    @invitation = current_user.invitations.build(invitation_params)
  end

  def update
  end

  def destroy
  end
end
