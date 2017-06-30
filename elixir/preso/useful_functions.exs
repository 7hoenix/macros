defmodule UsefulFunctions do
  defmacro __using__(_options) do
    quote do
      import unquote(__MODULE__)
      import BusinessFunctions
      import NumbersFunctions
    end
  end
end

defmodule BusinessFunctions do
  def business(_), do: IO.puts "Business stuff"
  def business(_, _), do: IO.puts "Moar business stuff"
  def business(_, _, _), do: IO.puts "Even moar business stuff"
end

defmodule NumbersFunctions do
  def numbers(_), do: IO.puts "Numbers stuff"
  def numbers(_, _), do: IO.puts "Moar numbers stuff"
  def numbers(_, _, _), do: IO.puts "Even moar numbers stuff"
end
