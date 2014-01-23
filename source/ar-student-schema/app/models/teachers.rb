class Teacher < ActiveRecord::Base
validates :email, :uniqueness => true
I18n.enforce_available_locales = false

end