class TierItemsController < ApplicationController
  before_action :set_tier_item, only: %i[ show edit update destroy ]

  # GET /tier_items or /tier_items.json
  def index
    @tier_items = TierItem.all
  end

  # GET /tier_items/1 or /tier_items/1.json
  def show
  end

  # GET /tier_items/new
  def new
    @tier_item = TierItem.new
  end

  # GET /tier_items/1/edit
  def edit
  end

  # POST /tier_items or /tier_items.json
  def create
    @tier_item = TierItem.new(tier_item_params)

    respond_to do |format|
      if @tier_item.save
        format.html { redirect_to tier_item_url(@tier_item), notice: "Tier item was successfully created." }
        format.json { render :show, status: :created, location: @tier_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tier_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tier_items/1 or /tier_items/1.json
  def update
    respond_to do |format|
      if @tier_item.update(tier_item_params)
        format.html { redirect_to tier_item_url(@tier_item), notice: "Tier item was successfully updated." }
        format.json { render :show, status: :ok, location: @tier_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tier_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tier_items/1 or /tier_items/1.json
  def destroy
    @tier_item.destroy

    respond_to do |format|
      format.html { redirect_to tier_items_url, notice: "Tier item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tier_item
      @tier_item = TierItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tier_item_params
      params.require(:tier_item).permit(:name, :description, :tier, :justification)
    end
end
