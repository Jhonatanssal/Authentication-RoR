module PostsHelper
  def username(post)
    if user_signed_in?
      post.user.username
    else
      "by Anonymous"
    end
  end

  def edit_button(post)
    if user_signed_in?
      link_to 'Edit', edit_post_path(post), class: 'btn btn-warning text-white mb-2'
    end
  end
end
