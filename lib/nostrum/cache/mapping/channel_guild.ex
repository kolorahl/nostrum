defmodule Nostrum.Cache.Mapping.ChannelGuild do
  @moduledoc """
  Mapping of channel -> guild relationships.

  Given just the `id` of a guild channel, there's no way to know what guild it
  belongs to. This mapping is an ETS table that stores this information.
  """

  @doc """
  Gets a `guild_id` from a `channel_id`.
  """
  @spec get_guild(integer) :: integer
  def get_guild(channel_id) do
    :ets.lookup_element(:channel_guild_map, channel_id, 2)
  end

end