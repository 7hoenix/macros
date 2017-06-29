defmodule Foo do
  case Application.get_env(:todo, :env) do
    :test ->
      defp bar() do
        false
      end
    :dev ->
      defp bar() do
        true
      end
  end
end
