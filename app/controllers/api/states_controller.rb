class Api::StatesController < ApplicationController
  def index
    @states = State.all
    render "index.json.jb"
  end

  def show
    @state = State.find_by(id: params[:id])
    render "show.json.jb"
  end
end
