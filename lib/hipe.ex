defmodule Hipe do
  @compile [:native, {:hipe, [:verbose, :o3]}]
  @doc false
  def start(_type, _args) do
    IO.puts "starting"
    (0..40) |> Enum.each fn(x) ->
      IO.puts "#{x} -> #{fib(x)}"
    end
    System.halt(0)
  end

  def fib(0) do 1 end
  def fib(1) do 1 end
  def fib(x) do
    fib(x - 1) + fib(x - 2)
  end
end
