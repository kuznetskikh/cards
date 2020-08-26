defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "check create_deck returns not empty deck" do
    assert Cards.create_deck() |> length > 0
  end

  test "check shuffle realy shuffles deck" do
    deck = Cards.create_deck()
    refute Cards.shuffle(deck) === deck
  end
end
