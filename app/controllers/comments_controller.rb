class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
	
	respond_to do |format|
		if @comment.save
			format.html {redirect_to post_path(@post, :notice => 'Noted!')}
			format.xml  { render :xml => @post, :status => :created, :location => @post }

		else
			format.html {redirect_to post_path(@post, :notice => 'Post must contain a name and post')}
			format.xml {render :xml => @comment.errors, :status => :unprocessable_entity}
		end
	end
  end

end
