defmodule Quote do

  @register_attribute :expressions, accumulate: true, persist: false

  defmacro put_quote(expression) do
    ast = quote do
      expression
    end
    Macro.to_string ast
    ast
  end

#   def normal_evaluation do
#     IO.puts string_concatenation()
#     # IO.puts @basic_subtraction
#     # IO.puts @complicated_maths
#   end

#   def quoted_evaluation do
#     quote do: string_concatenation()
#     # IO.puts quote do: @basic_subtraction
#     # IO.puts quote do: @complicated_maths
#   end

# quote do: "hello " <> "beautiful " <> "world"
  # @basic_subtraction 17 - 6
  # @complicated_maths 5 * 7 + 3 - 2
end
