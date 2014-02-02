# Use at least one worker per core if you're on a dedicated server,
# more will usually help for _short_ waits on databases/caches.
worker_processes 6

# nuke workers after 30 seconds instead of 60 seconds (the default)
timeout 30
