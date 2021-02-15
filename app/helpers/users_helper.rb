module UsersHelper
  def user_icons(user)
    !user.avatar.attached? ? '/icon.png' : user.avatar
  end

  def user_error
    return unless @user.errors.any?

    @user.errors.full_messages.each do |msg|
      @uclass = 'border border-danger' if msg.include?('Name')
    end
  end
end
