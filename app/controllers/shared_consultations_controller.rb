class SharedConsultationsController < ApplicationController
  def index
    @shared = current_user.shared_with_me
  end

  def show
    @user = User.find(params[:id])
    @consultations = @user.consultations
  end

end
