module Posts
  class ValidationsController < ApplicationController
    def show
      if post.valid?
        render status: 200
      else
        render json: post.errors, status: 422
      end
    end

    private

    def post
      @post ||= Post.find_by(id: params[:post_id]) || Post.new
    end
  end
end
