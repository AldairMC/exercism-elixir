defmodule TakeANumber do
  def start() do
    spawn(fn -> self() end)
  end
end
