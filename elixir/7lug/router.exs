defmodule J7lug do

  defmacro __using__(_options) do
    quote do
      Module.register_attribute __MODULE__, :routes, accumulate: true, persist: false
      import unquote(__MODULE__), only: [route: 2]
      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(env) do
    compile(Module.get_attribute(env.module, :routes))
  end

  defmacro route(path, mappings) do
    quote bind_quoted: [path: path, mappings: mappings] do
      @routes {path, mappings}
    end
  end

  def compile(handlers) do
    handlers_ast = for {route, mappings} <- handlers do
      defhandlers(route, "", mappings)
    end

    quote do
      def r(route, path, bindings \\ [])
      unquote(handlers_ast)
      def r(_route, _path, _bindings), do: {:error, 404}
    end
  end

  defp defhandlers(routes, current_path, mappings) do
  end
end
