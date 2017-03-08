class Job < ApplicationRecord
  def find_available_users
    User.joins(:profile).where(
      '(phone_number AND accepted_at) NOT NULL'
    ).joins(:availabilities).where(
      'day_off NOT BETWEEN ? AND ?',
      start_date,
      end_date
    )
  end
end
