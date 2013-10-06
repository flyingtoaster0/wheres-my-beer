module LCBO

  DEFAULT_CONFIG = {
      :user_agent  => nil, # Use the default User-Agent
      :max_retries => 8,   # Number of times to retry a request that fails
      :timeout     => 20    # Seconds to wait for a request before timing out
  }.freeze
end