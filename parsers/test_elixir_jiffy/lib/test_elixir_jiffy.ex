defmodule TestElixirJiffy do
  def main( _args = [file] ) do
    {:ok, json} = File.read(file)
    decoded = :jiffy.decode(json)
    IO.inspect decoded
    case decoded do
      { :ok, nil } -> exit({:shutdown, 1})
      { :ok, _ }   -> exit({:shutdown, 0})
      _            -> exit({:shutdown, 1})
    end
  end
end
