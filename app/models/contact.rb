class Contact < ApplicationRecord

  def friendly_time
    updated_at.strftime("%e %b %Y %H:%M:%S%p")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def phone_number_plus_jp_prefix
    "+81 #{phone_number}"
  end
end
