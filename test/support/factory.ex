defmodule AwesomeLunch.Factory do
  use ExMachina.Ecto, repo: AwesomeLunch.Repo

  def locations_factory do
    %AwesomeLunch.Locations {
      start: "115 Madison",
      finish: "123 Holland",
    }
  end
end
