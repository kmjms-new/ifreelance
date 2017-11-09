class QuotationRegistriesController < ApplicationController
  layout "dashboard"
  before_action :set_quotation_registry, only: [:show, :edit, :update, :destroy]

  # GET /quotation_registries
  # GET /quotation_registries.json
  def index
    @quotation_registries = QuotationRegistry.all
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'quotation_registries/pdf', pdf: 'pdf'}
    end
  end

  # GET /quotation_registries/1
  # GET /quotation_registries/1.json
  def show
    @quotation_registries = QuotationRegistry.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'quotation_registries/pdf', pdf: 'pdf'}
    end
  end

  # GET /quotation_registries/new
  def new
    @quotation_registry = QuotationRegistry.new
  end

  # GET /quotation_registries/1/edit
  def edit
  end

  # POST /quotation_registries
  # POST /quotation_registries.json
  def create
    @quotation_registry = QuotationRegistry.new(quotation_registry_params)

    respond_to do |format|
      if @quotation_registry.save
        format.html { redirect_to @quotation_registry, notice: 'Quotation registry was successfully created.' }
        format.json { render :show, status: :created, location: @quotation_registry }
      else
        format.html { render :new }
        format.json { render json: @quotation_registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotation_registries/1
  # PATCH/PUT /quotation_registries/1.json
  def update
    respond_to do |format|
      if @quotation_registry.update(quotation_registry_params)
        format.html { redirect_to @quotation_registry, notice: 'Quotation registry was successfully updated.' }
        format.json { render :show, status: :ok, location: @quotation_registry }
      else
        format.html { render :edit }
        format.json { render json: @quotation_registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotation_registries/1
  # DELETE /quotation_registries/1.json
  def destroy
    @quotation_registry.destroy
    respond_to do |format|
      format.html { redirect_to quotation_registries_url, notice: 'Quotation registry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotation_registry
      @quotation_registry = QuotationRegistry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quotation_registry_params
      params.require(:quotation_registry).permit(:idquotationregistry, :date, :nameclient, :business, :product, :value, :validity)
    end
end
