class MovimentodeEstoquesController < ApplicationController
  before_action :set_movimentode_estoque, only: [:show, :edit, :update, :destroy]

  # GET /movimentode_estoques
  # GET /movimentode_estoques.json
  def index
    @movimentode_estoques = MovimentodeEstoque.all
  end

  # GET /movimentode_estoques/1
  # GET /movimentode_estoques/1.json
  def show
  end

  # GET /movimentode_estoques/new
  def new
    @movimentode_estoque = MovimentodeEstoque.new
  end

  # GET /movimentode_estoques/1/edit
  def edit
  end

  # POST /movimentode_estoques
  # POST /movimentode_estoques.json
  def create
    @movimentode_estoque = MovimentodeEstoque.new(movimentode_estoque_params)

    respond_to do |format|
      if @movimentode_estoque.save
        format.html { redirect_to @movimentode_estoque, notice: 'Movimentode estoque was successfully created.' }
        format.json { render :show, status: :created, location: @movimentode_estoque }
      else
        format.html { render :new }
        format.json { render json: @movimentode_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimentode_estoques/1
  # PATCH/PUT /movimentode_estoques/1.json
  def update
    respond_to do |format|
      if @movimentode_estoque.update(movimentode_estoque_params)
        format.html { redirect_to @movimentode_estoque, notice: 'Movimentode estoque was successfully updated.' }
        format.json { render :show, status: :ok, location: @movimentode_estoque }
      else
        format.html { render :edit }
        format.json { render json: @movimentode_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimentode_estoques/1
  # DELETE /movimentode_estoques/1.json
  def destroy
    @movimentode_estoque.destroy
    respond_to do |format|
      format.html { redirect_to movimentode_estoques_url, notice: 'Movimentode estoque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimentode_estoque
      @movimentode_estoque = MovimentodeEstoque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimentode_estoque_params
      params.require(:movimentode_estoque).permit(:data, :quantidade, :pessoa, :operacao, :produto)
    end
end
