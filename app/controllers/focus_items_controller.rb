class FocusItemsController < ApplicationController
  before_action :set_focus_item, only: [:show, :edit, :update, :destroy]

  # GET /focus_items
  # GET /focus_items.json
  def index
    @focus_items = FocusItem.all
  end

  # GET /focus_items/1
  # GET /focus_items/1.json
  def show
  end

  # GET /focus_items/new
  def new
    @focus_item = FocusItem.new
  end

  # GET /focus_items/1/edit
  def edit
  end

  # POST /focus_items
  # POST /focus_items.json
  def create
    @focus_item = FocusItem.new(focus_item_params)

    respond_to do |format|
      if @focus_item.save
        format.html { redirect_to @focus_item, notice: 'Focus item was successfully created.' }
        format.json { render :show, status: :created, location: @focus_item }
      else
        format.html { render :new }
        format.json { render json: @focus_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /focus_items/1
  # PATCH/PUT /focus_items/1.json
  def update
    respond_to do |format|
      if @focus_item.update(focus_item_params)
        format.html { redirect_to @focus_item, notice: 'Focus item was successfully updated.' }
        format.json { render :show, status: :ok, location: @focus_item }
      else
        format.html { render :edit }
        format.json { render json: @focus_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /focus_items/1
  # DELETE /focus_items/1.json
  def destroy
    @focus_item.destroy
    respond_to do |format|
      format.html { redirect_to focus_items_url, notice: 'Focus item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_focus_item
      @focus_item = FocusItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def focus_item_params
      params.require(:focus_item).permit(:user_id, :status)
    end
end
