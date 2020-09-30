module PostsHelper
  def username
    if user_signed_in?
      @post.user.username
    else
      "by Anonymous"
    end
  end

  def edit_button
    if user_signed_in?
      link_to 'Edit', edit_post_path(@post), class: 'btn btn-warning'
    end
  end
end
