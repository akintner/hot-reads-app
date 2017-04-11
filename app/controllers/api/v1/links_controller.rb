# class Api::V1::LinksController < BaseController
#   def index
#     @links = Link.top_ten
#     render json: @links, status: 200
#   end

#   private
#     def link_params
#       params.require(:link).permit(:url, :title)
#     end
# end