defmodule Route do

  import Weber.Route
  require Weber.Route

  route on("GET", "/", :Photosapp.Main, :index)
     |> resources(:photos) # should map to Photosapp.Photos controller

end
