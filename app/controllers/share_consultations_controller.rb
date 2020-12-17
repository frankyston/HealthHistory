class ShareConsultationsController < ApplicationController
  before_action :set_appointment, only: [:show, :destroy]
  def index
    @shares = current_user.shared
  end

  def new
    @appointment = Appointment.new
  end

  def show
  end

  def create
    @appointment = Appointment.new
    @appointment.physician_id = get_physician.try(:id)
    @appointment.patient_id = current_user.id
    if @appointment.save
      flash[:success] = "Compartilhamento criado com sucesso."
      @appointment.shared!
      redirect_to appointment_index_path
    else
      flash[:error] = "Erro ao criar o compartilhamento."
      @appointment.physician_id = appointment_params[:physician_id]
      render :new
    end
  end

  def destroy
    @appointment.destroy
    flash[:success] = "Compartilhamento excluído com sucesso."
    redirect_to appointment_index_path
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def get_physician
    User.find_by(email: appointment_params[:physician_id])
  end

  def appointment_params
    params.require(:appointment).permit(:physician_id)
  end
end
