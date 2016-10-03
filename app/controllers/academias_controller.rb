class AcademiasController < ApplicationController
  before_action :set_academia, only: [:show, :edit, :update, :destroy]

  # GET /academias
  # GET /academias.json
  def index
    @academias = Academia.all

    @nome = params[:nome]

    filtro = "1=1"

    filtro = filtro + " and nome like '%#{@nome}%'"

    @academias = Academia.where(filtro).order("nome").paginate(page:params[:page], per_page: 3);
  end

  # GET /academias/1
  # GET /academias/1.json
  def show
  end

  # GET /academias/new
  def new
    @academia = Academia.new
  end

  # GET /academias/1/edit
  def edit
  end

  # POST /academias
  # POST /academias.json
  def create
    @academia = Academia.new(academia_params)

    respond_to do |format|
      if @academia.save
        format.html { redirect_to @academia, notice: 'Academia was successfully created.' }
        format.json { render :show, status: :created, location: @academia }
      else
        format.html { render :new }
        format.json { render json: @academia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /academias/1
  # PATCH/PUT /academias/1.json
  def update
    respond_to do |format|
      if @academia.update(academia_params)
        format.html { redirect_to @academia, notice: 'Academia was successfully updated.' }
        format.json { render :show, status: :ok, location: @academia }
      else
        format.html { render :edit }
        format.json { render json: @academia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /academias/1
  # DELETE /academias/1.json
  def destroy
    @academia.destroy
    respond_to do |format|
      format.html { redirect_to academias_url, notice: 'Academia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_academia
      @academia = Academia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def academia_params
      params.require(:academia).permit(:nome, :endereco, :telefone, :cnpj, :academia_id, :professor_id)
    end
end
