defmodule TestElixirJiffyTest do
  use ExUnit.Case
  doctest TestElixirJiffy

  test "greets the world" do
    assert TestElixirJiffy.hello() == :world
  end
end
