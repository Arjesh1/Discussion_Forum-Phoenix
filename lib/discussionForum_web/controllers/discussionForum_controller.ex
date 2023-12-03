defmodule DiscussionForumWeb.DiscussionForumController do
  use DiscussionForumWeb, :controller

  def index(conn, _params) do
    render(conn, :index, layout: false)
  end
end
