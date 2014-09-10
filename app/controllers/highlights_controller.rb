class HighlightsController < ApplicationController
  def index
    @highlights = Highlights.all
  end

  def create
    @highlight = Highlights.new(highlight_params)
    if @highlight.save
      redirect_to highlights_path
    else
      flash.now[:error] = @highlight.errors.full_messages
      render :new
    end
  end

  def show
    @highlight = Highlights.friendly.find(params[:id])
  end


  private

  def highlight_params
    params.require(:highlight).permit(:title, :description)
  end
end
