class QuotesController < ApplicationController
  before_action :set_quote, only: %i[ show edit update destroy ]
  before_action :require_login, except: [:index, :show]
  # GET /quotes or /quotes.json
  def index
    
    @quotes = current_user.quotes
  end

  # GET /quotes/1 or /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
    8.times { @quote.quote_categories.build }
  end

  # GET /quotes/1/edit
  def edit
  end  

  # POST /quotes or /quotes.json
  def create
    @quote = Quote.new(quote_params)
    respond_to do |format|
      if @quote.save
        format.html { redirect_to quote_url(@quote), notice: "Quote was successfully created." }
        format.json { render :show, status: :created, location: @quote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1 or /quotes/1.json
  # only the the owner of the quote or admin and do update
  def update
    if current_user.id == @quote.user_id || current_user.is_admin?
      respond_to do |format|
        if @quote.update(quote_params)
          format.html { redirect_to quote_url(@quote), notice: "Quote was successfully updated." }
          format.json { render :show, status: :ok, location: @quote }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @quote.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to quote_url(@quote), notice: "You are not authorized to edit this quote."
    end
  end

  # DELETE /quotes/1 or /quotes/1.json
  # only the the owner of the quote or admin and do destroy
  def destroy 
    if current_user.id == @quote.user_id || current_user.is_admin?
      @quote.destroy
      respond_to do |format|
        format.html { redirect_to quotes_url, notice: "Quote was successfully destroyed." }
        format.json { head :no_content }
      end

    else
      redirect_to quote_url(@quote), notice: "You are not authorized to destroy this quote."
    end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.require(:quote).permit(:text, :publication_year, :comment, :is_public, :user_id, :philosopher_id, quote_categories_attributes: [:id, :category_id,:_destroy])
    end
end
