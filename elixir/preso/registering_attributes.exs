defmodule RegisteringAttributes do
  defmacro __using__(_options) do
    quote do
      import unquote(__MODULE__)
      Module.register_attribute __MODULE__, :routes, accumulate: true
      def load_routes do
        IO.puts "Your current routes are (#{inspect @routes})"
      end
    end
  end

  defmacro scope(root_path, do: route_block) do
    final_root_path = String.to_atom(root_path)
    quote do
      @routes {unquote(route_block), unquote(final_root_path)}
      def unquote(final_root_path)(), do: unquote(route_block)
    end
  end

  # {:get, [], ["/", {:__aliases__, [alias: false], [:PageController]}, :index]}
  defmacro route({verb, _, [path, controller_info, action]}) do
    quote bind_quoted: [verb: verb, path: path, controller_info: controller_info, action: action] do
      RegisteringAttributes.Router.route(verb, path, controller_info, action)
    end
  end
end

defmodule RegisteringAttributes.Router do
  def route(:get, path, controller_info, action) do
    IO.puts """
    Received a GET request to #{path}...
    routing to #{controller_info}'s #{action} function
    """
  end
  def route(unsupported_verb, _, _, _) do
    IO.puts """
    FAILURE:
    #{unsupported_verb} is not currently supported.
    """
  end
end
