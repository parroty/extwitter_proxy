defmodule ExTwitterProxy do
  def home_timeline do
    ExTwitter.home_timeline
    |> Enum.map(fn(t) -> t.text end)
    |> Enum.take(5)
    |> Enum.join("\n")
    |> IO.puts
  end
end
