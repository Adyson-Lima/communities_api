class Api::V1::CommunitiesController < ApplicationController

 # before_action :set_community, only: %i[] # show update destroy

 def index
  @communities = Community.all 
  render json: @communities
 end

private

def set_community
  @community = Community.find(params[:id])
end

def community_params
  params.require(:community).permit(:name, :project)
end

end