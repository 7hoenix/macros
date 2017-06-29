defmodule I18n do
  use Translator

  locale "en",
    flash: [
      welcome_message: "Welcome %{first_name}",
      logout_message: "See you soon %{first_name}"
    ]

  locale "fr",
    flash: [
      welcome_message: "Bonjour %{first_name}",
      logout_message: "Au revoir, %{first_name}"
    ]

  locale "jp",
    flash: [
      welcome_message: "こんにちは %{first_name}",
      logout_message: "さようなら %{first_name}"
    ]
end
