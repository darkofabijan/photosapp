defmodule Route do

  import Weber.Route
  require Weber.Route

  route on("GET", "/", :Photosapp.Main, :index)
     |> resources(:Photosapp.Photos)

end
