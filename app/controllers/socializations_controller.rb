class SocializationsController < ApplicationController
	before_filter :load_socializable

  def follow
    current_user.follow!(@socializable)
    render json: { follow: true }
  end

  def unfollow
    current_user.unfollow!(@socializable)
    render json: { follow: false }
  end

   def like
    current_user.like!(@socializable)
    render json: { follow: true }
  end

  def unlike
    current_user.unlike!(@socializable)
    render json: { follow: false }

private
  def load_socializable
    @socializable =
      case
      when id = params[:comment_id] # Must be before :item_id, since it's nested under it.
        @community.comments.find(id)
      when id = params[:post_id]
        @community.posts.find(id)
      when id = params[:user_id]
        User.find(id)
   
      else
        raise ArgumentError, "Unsupported socializable model, params: " +
                             params.keys.inspect
      end
    raise ActiveRecord::RecordNotFound unless @socializable
  end  
end
end
