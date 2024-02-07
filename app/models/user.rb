class User < ApplicationRecord
    has_secure_password
    before_save :mail_downcase

    validates :email, presence: true

    def mail_downcase
        if email.present?
            email.downcase!
        end
    end
end
