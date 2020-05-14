defmodule ClusterWeb.PageView do
  use ClusterWeb, :view

  def render("index.json", %{data: data}) do
    %{
      status: "OK",
      data: data
    }
  end
end
