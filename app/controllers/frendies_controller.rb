class FrendiesController < ApplicationController
  before_action :set_frendy, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /frendies
  # GET /frendies.json
  def index
    @frendies = Frendy.all
  end

  # GET /frendies/1
  # GET /frendies/1.json
  def show
  end

  # GET /frendies/new
  def new
    #@frendy = Frendy.new
    @frendy = current_user.frendy.build
  end

  # GET /frendies/1/edit
  def edit
  end

  # POST /frendies
  # POST /frendies.json
  def create
    #@frendy = Frendy.new(frendy_params)
    @frendy = current_user.frendy.build(frendy_params)

    respond_to do |format|
      if @frendy.save
        format.html { redirect_to @frendy, notice: 'Frendy was successfully created.' }
        format.json { render :show, status: :created, location: @frendy }
      else
        format.html { render :new }
        format.json { render json: @frendy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frendies/1
  # PATCH/PUT /frendies/1.json
  def update
    respond_to do |format|
      if @frendy.update(frendy_params)
        format.html { redirect_to @frendy, notice: 'Frendy was successfully updated.' }
        format.json { render :show, status: :ok, location: @frendy }
      else
        format.html { render :edit }
        format.json { render json: @frendy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frendies/1
  # DELETE /frendies/1.json
  def destroy
    @frendy.destroy
    respond_to do |format|
      format.html { redirect_to frendies_url, notice: 'Frendy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def correct_user
    @frendy = current_user.frendy.find_by(id: params[:id])
    redirect_to frendies_path, notice: "Not Authorised To Edit This Friend" if @frendy.nil?
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frendy
      @frendy = Frendy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frendy_params
      params.require(:frendy).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end
