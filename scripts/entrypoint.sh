#!/bin/sh
set -e
# When Railway mounts a volume at /paperclip it is often not writable by the paperclip user.
# Create dirs Paperclip needs and ensure the whole tree is owned by paperclip.
mkdir -p /paperclip/instances/default/logs
chown -R paperclip:paperclip /paperclip
exec gosu paperclip "$@"
