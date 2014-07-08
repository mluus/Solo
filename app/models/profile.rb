class Profile < ActiveRecord::Base

  validate :check_email_format

  def check_email_format
    return if self.email.nil?

    if self.email.include? "@"
    else
      self.errors.add :base, 'email format incorrect'
    end
  end


end


# class Url < ActiveRecord::Base

#   validate :check_original_url

#   def check_original_url
#     if self.original.blank?
#       self.errors.add :base, 'Original URL should not be blank'
#     end
#   end

# end
