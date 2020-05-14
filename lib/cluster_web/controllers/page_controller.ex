defmodule ClusterWeb.PageController do
  use ClusterWeb, :controller

  def index(conn, _params) do
    list = Node.list()

    data = %{
      iam: inspect(Node.self()),
      list: Enum.map(list, fn node -> inspect(node) end),
      ping: Enum.map(list, fn node -> inspect(Node.ping(node)) end)
    }

    render(conn, "index.json", data: data)
  end
end
