module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Stranger GuestUser"
    guest.first_name = "Stranger"
    guest.last_name = "GuestUser"
    guest.email = "guest@example.com"
    guest
  end
end