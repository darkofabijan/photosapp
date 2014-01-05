defmodule Photosapp.Photos do

  def index([], _conn) do
    {:render, [], []}
  end

end
