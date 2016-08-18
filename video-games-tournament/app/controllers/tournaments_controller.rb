class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def all
    tournaments = Tournament.all
    render json: tournaments
  end

  def create
  	tournament = Tournament.create(tournamentParams)
    render  json: tournament,
            status: 201
  end

  private

  def tournamentParams
  	params.require(:tournament).permit(:name)
  end
end


