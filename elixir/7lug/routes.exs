defmodule Router do
  use J7lug
  import WelcomeController

  route {:get, "/"},
    index: WelcomeController
end
