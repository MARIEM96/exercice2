defmodule Processus do
  @moduledoc """
  Documentation for Processus.
  """

     @doc """
    ### exemple
    iex> Processus.start()

  """
  def start() do
    processus1()
    Process.sleep(1000)
    pid1 = processus2()

    send(pid1, :hi)


      :ok
    end
  def processus1() do

    spawn(&afficher/0)
  end


    def processus2() do
      spawn(&listen/0)


    end


  def listen do
    receive do
      :hi ->
        IO.puts("hello there!")
        IO.puts('RECU')
        listen()
        _ -> nil
    end
  end
  def afficher() do
   IO.puts("j'envoi au processus 1 un message")
  end

end
