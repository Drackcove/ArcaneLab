class HomeController < ApplicationController

	def index
		if params['cardname']
			@cards = MTG::Card.where(name: params['cardname']).all
			render partial:'cards', locals: {cards: @cards }
		end
	end
end
