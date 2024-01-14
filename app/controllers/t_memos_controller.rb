class TMemosController < ApplicationController
  before_action :set_t_memo, only: %i[ show edit update destroy ]

  # GET /t_memos or /t_memos.json
  def index
    @t_memos = TMemo.all
  end

  # GET /t_memos/1 or /t_memos/1.json
  def show
  end

  # GET /t_memos/new
  def new
    @t_memo = TMemo.new
  end

  # GET /t_memos/1/edit
  def edit
  end

  # POST /t_memos or /t_memos.json
  def create
    @t_memo = TMemo.new(t_memo_params)

    respond_to do |format|
      if @t_memo.save
        format.html { redirect_to t_memo_url(@t_memo), notice: "T memo was successfully created." }
        format.json { render :show, status: :created, location: @t_memo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @t_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_memos/1 or /t_memos/1.json
  def update
    respond_to do |format|
      if @t_memo.update(t_memo_params)
        format.html { redirect_to t_memo_url(@t_memo), notice: "T memo was successfully updated." }
        format.json { render :show, status: :ok, location: @t_memo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @t_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_memos/1 or /t_memos/1.json
  def destroy
    @t_memo.destroy!

    respond_to do |format|
      format.html { redirect_to t_memos_url, notice: "T memo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_memo
      @t_memo = TMemo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def t_memo_params
      params.require(:t_memo).permit(:memo)
    end
end
