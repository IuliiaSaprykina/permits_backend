class UserPermit < ApplicationRecord
  belongs_to :user_id
  belongs_to :permit_id
end
