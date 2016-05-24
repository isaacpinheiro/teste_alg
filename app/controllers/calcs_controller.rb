class CalcsController < ApplicationController

  def index
    @equ2 = Equ2.new
    @equ2.a = params[:a]
    @equ2.b = params[:b]
    @equ2.c = params[:c]
    @equ2.calc

    respond_to do |format|
      format.json { render json: [{ :delta => @equ2.delta, :x1 => @equ2.x1, :x2 => @equ2.x2 }] }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def calc_params
      params.require(:calc).permit(:a, :b, :c)
    end
end
