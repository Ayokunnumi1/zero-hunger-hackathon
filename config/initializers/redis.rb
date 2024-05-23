# Without Connection Pool
NAMESPACE = :DEFAULT_NAMESPACE
REDIS = Redis::Namespace.new(NAMESPACE, :redis => Redis.new)