class RequestsController < ApplicationController

    def index
        @requests = Request.all

        render json: { requests: @requests }, include: :user
    end

end
