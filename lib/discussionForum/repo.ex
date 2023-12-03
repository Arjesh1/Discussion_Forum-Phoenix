defmodule DiscussionForum.Repo do
  use Ecto.Repo,
    otp_app: :discussionForum,
    adapter: Ecto.Adapters.Postgres
end
