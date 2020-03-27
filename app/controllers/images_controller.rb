class ImagesController < ApplicationController

    def index
        @images = Image.all

        render json: { images: @images }, include: :user
    end

end
