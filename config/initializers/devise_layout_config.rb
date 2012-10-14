Bushido::Application.configure do
  config.to_prepare do
    Devise::SessionsController.layout       "devise"
    Devise::RegistrationsController.layout  "devise"
    Devise::ConfirmationsController.layout  "devise"
    Devise::UnlocksController.layout        "devise"
    Devise::PasswordsController.layout      "devise"
  end
end