class GrupodeProdutosController < ApplicationController
  before_action :set_grupode_produto, only: [:show, :edit, :update, :destroy]

  # GET /grupode_produtos
  # GET /grupode_produtos.json
  def index
    @grupode_produtos = GrupodeProduto.all
  end

  # GET /grupode_produtos/1
  # GET /grupode_produtos/1.json
  def show
  end

  # GET /grupode_produtos/new
  def new
    @grupode_produto = GrupodeProduto.new
  end

  # GET /grupode_produtos/1/edit
  def edit
  end

  # POST /grupode_produtos
  # POST /grupode_produtos.json
  def create
    @grupode_produto = GrupodeProduto.new(grupode_produto_params)

    respond_to do |format|
      if @grupode_produto.save
        format.html { redirect_to @grupode_produto, notice: 'Grupode produto was successfully created.' }
        format.json { render :show, status: :created, location: @grupode_produto }
      else
        format.html { render :new }
        format.json { render json: @grupode_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupode_produtos/1
  # PATCH/PUT /grupode_produtos/1.json
  def update
    respond_to do |format|
      if @grupode_produto.update(grupode_produto_params)
        format.html { redirect_to @grupode_produto, notice: 'Grupode produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupode_produto }
      else
        format.html { render :edit }
        format.json { render json: @grupode_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupode_produtos/1
  # DELETE /grupode_produtos/1.json
  def destroy
    @grupode_produto.destroy
    respond_to do |format|
      format.html { redirect_to grupode_produtos_url, notice: 'Grupode produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupode_produto
      @grupode_produto = GrupodeProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupode_produto_params
      params.require(:grupode_produto).permit(:nome)
    end
end
