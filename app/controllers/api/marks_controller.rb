class Api::MarksController < ApplicationController
  respond_to :json

  def index
    @marks = Mark.search(params[:query])
    respond_with @marks
  end
end
