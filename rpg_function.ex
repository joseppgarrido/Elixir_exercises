defmodule RPG do
   def total_points(%{str: str_value, dex: dex_value, int: int_value}) do
      (str_value * 2) + (dex_value * 3) + (int_value * 3)
   end
end
