defmodule EnchanterShop do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true},
    ]
  end
  @enchanter_name "Edwin"

  def enchant_for_sale([]), do: []
  def enchant_for_sale([item = %{magic: true} | incoming_items]) do
    [item | enchant_for_sale(incoming_items)]
  end
  def enchant_for_sale([item | incoming_items]) do
    new_item = %{
      title: "#{@enchanter_name}'s #{item.title}",
      price: item.price * 3,
      magic: true
    }

    [new_item | enchant_for_sale(incoming_items)]
  end
end

defmodule GeneralStore do
  #se puede acceder a test_data del otro modulo porq no es private
  # def test_data do
  #   [
  #     %{title: "Longsword", price: 50, magic: false},
  #     %{title: "Healing Potion", price: 60, magic: true},
  #     %{title: "Rope", price: 10, magic: false},
  #     %{title: "Dragon's Spear", price: 100, magic: true},
  #   ]
  # end

  def filter_items([], magic: magic), do: []
  def filter_items([item = %{magic: item_magic} | tail], magic: filter_magic) when item_magic == filter_magic do
    [item | filter_items(tail, magic: filter_magic)]
  end
  def filter_items([item | tail], magic: filter_magic) do
    filter_items(tail, magic: filter_magic)
  end
end
