class LoactionsController < ApplicationController
  before_action :set_loaction, only: %i[ show edit update destroy ]

  # GET /loactions or /loactions.json
  def index
    @loactions = Loaction.all
  end

  # GET /loactions/1 or /loactions/1.json
  def show
  end

  # GET /loactions/new
  def new
    @loaction = Loaction.new
  end

  # GET /loactions/1/edit
  def edit
  end

  # POST /loactions or /loactions.json
  def create
    @loaction = Loaction.new(loaction_params)

    respond_to do |format|
      if @loaction.save
        format.html { redirect_to loaction_url(@loaction), notice: "Loaction was successfully created." }
        format.json { render :show, status: :created, location: @loaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loactions/1 or /loactions/1.json
  def update
    respond_to do |format|
      if @loaction.update(loaction_params)
        format.html { redirect_to loaction_url(@loaction), notice: "Loaction was successfully updated." }
        format.json { render :show, status: :ok, location: @loaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loactions/1 or /loactions/1.json
  def destroy
    @loaction.destroy

    respond_to do |format|
      format.html { redirect_to loactions_url, notice: "Loaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loaction
      @loaction = Loaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loaction_params
      params.fetch(:loaction, {})
    end
end
