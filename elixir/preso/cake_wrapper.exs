defmodule CakeWrapper do
  defmacro __using__(_options) do
    quote do
      import unquote(__MODULE__)
    end
  end

  def wrap(string), do: "Cake " <> string <> " Cake"
  def wrap(string1, string2), do: "Cake " <> string1 <> " " <> string2 <> " Cake"
end
