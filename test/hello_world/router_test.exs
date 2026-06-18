defmodule HelloWorld.RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts HelloWorld.Router.init([])

  test "GET / returns Hello, World!" do
    conn =
      :get
      |> conn("/")
      |> HelloWorld.Router.call(@opts)

    assert conn.status == 200
    assert conn.resp_body == "Hello, World!"
  end

  test "GET /health returns ok" do
    conn =
      :get
      |> conn("/health")
      |> HelloWorld.Router.call(@opts)

    assert conn.status == 200
    assert conn.resp_body == "ok"
  end

  test "unknown routes return 404" do
    conn =
      :get
      |> conn("/unknown")
      |> HelloWorld.Router.call(@opts)

    assert conn.status == 404
  end
end
