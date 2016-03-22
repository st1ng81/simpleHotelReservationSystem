class LodgesController < ApplicationController
  before_action :set_lodge, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /lodges
  # GET /lodges.json
  def index
    @lodges = Lodge.all
  end

  # GET /lodges/1
  # GET /lodges/1.json
  def show
  end

  # GET /lodges/new
  def new
    @lodge = Lodge.new
  end

  # GET /lodges/1/edit
  def edit
  end

  # POST /lodges
  # POST /lodges.json
  def create
    @lodge = Lodge.new(lodge_params)

    respond_to do |format|
      if @lodge.save
        format.html { redirect_to @lodge, notice: 'Lodge was successfully created.' }
        format.json { render :show, status: :created, location: @lodge }
      else
        format.html { render :new }
        format.json { render json: @lodge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lodges/1
  # PATCH/PUT /lodges/1.json
  def update
    respond_to do |format|
      if @lodge.update(lodge_params)
        format.html { redirect_to @lodge, notice: 'Lodge was successfully updated.' }
        format.json { render :show, status: :ok, location: @lodge }
      else
        format.html { render :edit }
        format.json { render json: @lodge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lodges/1
  # DELETE /lodges/1.json
  def destroy
    @lodge.destroy
    respond_to do |format|
      format.html { redirect_to lodges_url, notice: 'Lodge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lodge
      @lodge = Lodge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lodge_params
      params.require(:lodge).permit(:name,:address,:landline,:mobile,:manager_name,:manager_phone)
    end
end
