class Api::MarksController < ApplicationController
  respond_to :json

  def index
    @marks = Mark.all
    respond_with @marks
  end
end
