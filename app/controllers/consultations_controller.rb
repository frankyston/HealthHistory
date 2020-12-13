class ConsultationsController < ApplicationController
  before_action :set_consultation, only: [:show, :edit, :update, :destroy]

  # GET /consultations
  # GET /consultations.json
  def index
    @consultations = current_user.consultations.all
<<<<<<< HEAD
=======
    if params[:title].present?
      @consultations = @consultations.where("lower(title) ilike '%#{params[:title].downcase}%'")
    end
>>>>>>> ededa21b300e59c4ce61590f3915a0c00e0503f3
  end

  # GET /consultations/1
  # GET /consultations/1.json
  def show
  end

  # GET /consultations/new
  def new
    @consultation = current_user.consultations.new
  end

  # GET /consultations/1/edit
  def edit
  end

  # POST /consultations
  # POST /consultations.json
  def create
    @consultation = current_user.consultations.new(consultation_params)

    respond_to do |format|
      if @consultation.save
        format.html { redirect_to @consultation, notice: 'Consulta criada com sucesso.' }
        format.json { render :show, status: :created, location: @consultation }
      else
        format.html { render :new }
        format.json { render json: @consultation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultations/1
  # PATCH/PUT /consultations/1.json
  def update
    respond_to do |format|
      if @consultation.update(consultation_params)
        format.html { redirect_to @consultation, notice: 'Consulta atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @consultation }
      else
        format.html { render :edit }
        format.json { render json: @consultation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultations/1
  # DELETE /consultations/1.json
  def destroy
    @consultation.destroy
    respond_to do |format|
      format.html { redirect_to consultations_url, notice: 'Consulta apagada' }
      format.json { head :no_content }
    end
  end

  private
<<<<<<< HEAD
  # Use callbacks to share common setup or constraints between actions.
  def set_consultation
    @consultation = current_user.consultations.find(params[:id])
  end
=======
    # Use callbacks to share common setup or constraints between actions.
    def set_consultation
      @consultation = current_user.consultations.find(params[:id])
    end
>>>>>>> ededa21b300e59c4ce61590f3915a0c00e0503f3

  # Only allow a list of trusted parameters through.
  def consultation_params
    params.require(:consultation).permit(:title, :name_of_professional, :consultation_date, :user_id, :shared_with)
  end
end
