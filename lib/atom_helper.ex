defmodule AtomHelper do
  @moduledoc """
  Documentation for AtomHelper.
  """
  def atom_keys_to_str(map) when is_map(map), do: for {key, val} <- map, into: %{}, do: {Atom.to_string(key), val}
  def atom_keys_to_str(arr) when is_list(arr), do: for val <- arr, into: [], do: Atom.to_string(val)

  def str_keys_to_atom(map) when is_map(map), do: for {key, val} <- map, into: %{}, do: {String.to_atom(key), val}
  def str_keys_to_atom(arr) when is_list(arr), do: for val <- arr, into: [], do: String.to_atom(val)

  def str_keys_to_atom!(map) when is_map(map), do: for {key, val} <- map, into: %{}, do: {String.to_existing_atom(key), val}
  def str_keys_to_atom!(arr) when is_list(arr), do: for val <- arr, into: [], do: String.to_existing_atom(val)
end
