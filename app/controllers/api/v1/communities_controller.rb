class Api::V1::CommunitiesController < ApplicationController

 before_action :set_community, only: %i[show update destroy] # show update destroy

 def index
  @communities = Community.all 
  render json: @communities
 end

 def show
  render json: @community
 end

 def create
  @community = Community.new(community_params)
  if @community.save
    render json: @community, status: :created, location: api_v1_community_url(@community)
  else
    render json: @community.errors, status: :unprocessable_entity
  end
 end

 def update
  if @community.update(community_params)
    render json: @community
  else
    render json: @community.errors, status: :unprocessable_entity
  end
 end

 def destroy
  @community.destroy!
 end

private

def set_community
  @community = Community.find(params[:id])
end

def community_params
  params.require(:community).permit(:name, :project)
end

end