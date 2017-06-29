defmodule MathTest do
  use Assertion

  test "integers can be added and subtracted" do
    assert 2 + 5 == 5
    assert 10 > 0
    assert 1 > 2
    assert 10 * 10 == 100
  end
end
