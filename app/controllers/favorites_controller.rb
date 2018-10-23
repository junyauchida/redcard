class FavoritesController < ApplicationController
	def create
		cardlist = Cardlist.find(params[:cardlist_id])
		favorite = current_user.favorites.new(cardlist_id: cardlist.id)
		favorite.save
		redirect_to cardlists_index_all_users_path
	end

	def destroy
		cardlist = Cardlist.find(params[:cardlist_id])
		favorite = current_user.favorites.find_by(cardlist_id: cardlist.id)
		favorite.destroy
		redirect_to cardlists_index_all_users_path
	end
end
