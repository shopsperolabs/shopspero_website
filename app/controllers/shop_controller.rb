class ShopController < ApplicationController
    def pagecontainer
        puts "this is the current user #{current_user} \n"
        puts "this is their session value #{user_session} \n"
        @query = params[:query] || "Display"
        @no_nav = true
    end
end