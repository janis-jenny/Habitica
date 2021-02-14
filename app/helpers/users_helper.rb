module UsersHelper
  def user_icons(user)
    !user.avatar.attached? ? '/icon.png' : user.avatar
  end

  def user_error
    return unless @user.errors.any?

    @user.errors.full_messages.each do |msg|
      if msg.include?('Name')
        @uclass = 'border border-danger'
      end
    end
  end
end
