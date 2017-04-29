defmodule AtomHelper do
  @moduledoc """
  Documentation for AtomHelper.
  """
  @spec atom_to_str(atom | map | list) :: binary
  def atom_to_str(atom) when is_atom(atom), do: Atom.to_string(atom)
  def atom_to_str(map) when is_map(map), do: for {key, val} <- map, into: %{}, do: {Atom.to_string(key), val}
  def atom_to_str(arr) when is_list(arr), do: for val <- arr, into: [], do: Atom.to_string(val)

  @spec str_to_atom(binary | map | list) :: atom
  def str_to_atom(str) when is_binary(str), do: String.to_atom(str)
  def str_to_atom(map) when is_map(map), do: for {key, val} <- map, into: %{}, do: {String.to_atom(key), val}
  def str_to_atom(arr) when is_list(arr), do: for val <- arr, into: [], do: String.to_atom(val)

  @spec str_to_atom!(binary | map | list) :: atom
  def str_to_atom!(str) when is_binary(str), do: String.to_existing_atom(str)
  def str_to_atom!(map) when is_map(map), do: for {key, val} <- map, into: %{}, do: {String.to_existing_atom(key), val}
  def str_to_atom!(arr) when is_list(arr), do: for val <- arr, into: [], do: String.to_existing_atom(val)
end
