# rubocop: disable Layout/LineLength, Style/GuardClause

module PostsHelper
  def username(post)
    if user_signed_in?
      post.user.username
    else
      'by Anonymous'
    end
  end

  def edit_button(post)
    link_to 'Edit', edit_post_path(post), class: 'btn btn-warning text-white mb-2' if user_signed_in?
  end

  def destroy_button(post)
    if user_signed_in?
      link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger text-white mb-2'
    end
  end
end

# rubocop: enable Layout/LineLength, Style/GuardClause
