# frozen_string_literal: true

# Posts management
# List, create, etc...
module Api
  class PostsController < ApplicationController
    include DeviseTokenAuth::Concerns::SetUserByToken

    before_action :authenticate_api_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    def index
      
    end

    def create
      Api::CreatePostProcedure(:params)
    end

    def show
    end

    def update
      Api::UpdatePostProcedure(:params[:id], :params)
    end

    def destroy
    end

    private

    def posts_params
      params.permit(
        :id,
        post: %i[title content user_id]
      )
    end
  end
end