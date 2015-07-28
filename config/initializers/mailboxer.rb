Mailboxer.setup do |config|

  #Configures if you application uses or not email sending for Notifications and Messages
  config.uses_emails = true

  #Configures the methods needed by mailboxer
  config.email_method = :mailboxer_email
  config.name_method = :name
end
