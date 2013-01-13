class PartiesController < ApplicationController
  def index
  	@parties = Party.plusminus_tally.limit(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @parties }
    end
  end
  def vote
    party = Party.find(params[:id])
    vote = ""
    if params[:vote] == "up"
      User.all[0].vote_exclusively_for(party)
      vote = "up"
    elsif params[:vote] == "down"
      User.all[0].vote_exclusively_against(party)
      vote = "down"
    end
    render :json => {'success' => true, 'vote' => vote}
  end
end
