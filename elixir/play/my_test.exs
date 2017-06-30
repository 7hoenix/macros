defmodule J7Assertion do

  defmacro assert({:==, _, [lhs, rhs]}) do
    quote do
      if(!(unquote(lhs) == unquote(rhs))) do
        raise "Expected: #{unquote(lhs)} to be equal to #{unquote(rhs)}"
      end
    end
  end
end
