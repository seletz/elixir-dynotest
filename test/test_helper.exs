Dynamo.under_test(Dynotest.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Dynotest.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
