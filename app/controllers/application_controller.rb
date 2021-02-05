class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :format_date

  def current_user
    User.find_by(id: session[:user_id])
  end

  def format_date(date)
    return unless date.is_a?(Date)

    year = date.year
    month = Date::MONTHNAMES[date.month]

    day_of_month = date.mday.to_s
    last_dig = date.mday.digits[0]
    day_of_month << 'th' unless [1, 2, 3].include?(last_dig)
    day_of_month << 'st' if last_dig == 1
    day_of_month << 'nd' if last_dig == 2
    day_of_month << 'rd' if last_dig == 3

    day_of_week = Date::DAYNAMES[date.wday]

    "#{day_of_week}, #{day_of_month} #{month} #{year}"
  end
end
