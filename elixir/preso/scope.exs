defmodule Scope do
  defmacro __using__(_options) do
    quote do
      IO.inspect unquote(__MODULE__)
      IO.inspect __MODULE__
    end
  end
end


  # defmacro __before_compile__(env) do
  #   # IO.inspect env.module
  # end

  # defmacro locale(name, mappings) do
  #   quote bind_quoted: [name: name, mappings: mappings] do
  #     @locales {name, mappings}
  #   end
  # end

  # def compile(translations) do
  #   translations_ast = for {locale, mappings} <- translations do
  #     deftranslations(locale, "", mappings)
  #   end

  #   final_ast = quote do
  #     def t(locale, path, bindings \\ [])
  #     unquote(translations_ast)
  #     def t(_locale, _path, _bindings), do: {:error, :no_translation}
  #   end

  #   # IO.puts Macro.to_string(final_ast)
  #   final_ast
  # end

  # defp deftranslations(locale, current_path, mappings) do
  #   for {key, val} <- mappings do
  #     path = append_path(current_path, key)
  #     if Keyword.keyword?(val) do
  #       deftranslations(locale, path, val)
  #     else
  #       quote do
  #         def t(unquote(locale), unquote(path), bindings) do
  #           unquote(interpolate(val))
  #         end
  #       end
  #     end
  #   end
  # end

  # defp interpolate(string) do
  #   ~r/(?<head>)%{[^}]+}(?<tail>)/
  #   |> Regex.split(string, on: [:head, :tail])
  #   |> Enum.reduce("", &concatenator/2)
  # end

  # defp concatenator(<<"%{" <> rest>>, acc) do
  #   key = String.to_atom(String.rstrip(rest, ?}))
  #   quote do
  #     unquote(acc) <> to_string(Map.get(bindings, unquote(key)))
  #   end
  # end
  # defp concatenator(segment, acc), do: quote do: (unquote(acc) <> unquote(segment))
  # defp append_path("", next), do: to_string(next)
  # defp append_path(current, next), do: "#{current}.#{next}"
# end
