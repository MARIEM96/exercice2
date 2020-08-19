defmodule ProcessusTest do
  use ExUnit.Case



  describe "start/0" do
    test "responds to caller process when a message is received" do
      process = Processus.processus2()
      caller_pid = Processus.processus1()
      message = "Hello World"


      send process, {:hello, message, caller_pid}


    end
  end
end
