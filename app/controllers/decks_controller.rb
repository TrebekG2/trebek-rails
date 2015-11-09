class DecksController < ApplicationController

	def index
		@decks = Deck.all
		render "decks.json.jbuilder"
	end

	def create

		#@deck = Deck.new( title: params[:title])
		@deck = current_user.decks.new(title: params[:title])
	
		if @deck.save

			render "deck_made.json.jbuilder", status: :created
		else
			render json: {error: "Could not create Deck"}
		end
	end

	def destroy
		@deck = Deck.find_by(id: params[:deck_id])
		@deck.destroy
		index
		#binding.pry
	end

end