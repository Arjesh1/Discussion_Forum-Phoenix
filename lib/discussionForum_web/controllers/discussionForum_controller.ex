defmodule DiscussionForumWeb.DiscussionForumController do
  use DiscussionForumWeb, :controller

  def index(conn, _params) do
    render(conn, :index, layout: false)
  end

  def show(conn, %{"topicId" => topicId} = params) do
  render(conn, :show, topicId: topicId)
end

end
