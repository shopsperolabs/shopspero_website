class ShopController < ApplicationController
    def pagecontainer
        @query = params[:query] || "Display"
    end
end