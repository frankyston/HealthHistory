class TreatmentsController < ApplicationController
  before_action :set_consultation
  before_action :set_treatment, only: [:show, :edit, :update, :destroy]

  # GET /treatments
  # GET /treatments.json
  def index
    @treatments = @consultation.treatments.all
    if params[:title].present?
      @treatments = @treatments.where("lower(title) ilike '%#{params[:title].downcase}%'")
    end
  end

  # GET /treatments/1
  # GET /treatments/1.json
  def show
  end

  # GET /treatments/new
  def new
    @treatment = @consultation.treatments.new
  end

  # GET /treatments/1/edit
  def edit
  end

  # POST /treatments
  # POST /treatments.json
  def create
    @treatment = @consultation.treatments.new(treatment_params)

    respond_to do |format|
      if @treatment.save
        format.html { redirect_to consultation_treatments_path(@consultation, @treatment), notice: 'Tratamento criado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /treatments/1
  # PATCH/PUT /treatments/1.json
  def update
    respond_to do |format|
      if @treatment.update(treatment_params)
        format.html { redirect_to consultation_treatments_path(@consultation, @treatment), notice: 'Tratamento atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /treatments/1
  # DELETE /treatments/1.json
  def destroy
    @treatment.destroy
    respond_to do |format|
      format.html { redirect_to consultation_treatments_path(@consultation), notice: 'Tratamento apagado.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment
      @treatment = @consultation.treatments.find(params[:id])
    end

    def set_consultation
      @consultation = current_user.consultations.find(params[:consultation_id])
    end

    # Only allow a list of trusted parameters through.
    def treatment_params
      params.require(:treatment).permit(:treatment_date, :treatment_location, :user_id, :shared, :title, files: [])
    end
end
