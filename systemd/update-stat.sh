#!/usr/bin/env bash
# > heglp set
# Command: SET
# Summary: Set the string value of a key
# Complexity: O(1)
# Args:
#      key (key)
#      value (string)
#      expiration (enum)
#      condition (enum)

redis-cli set stat roll-call ex 900
echo `date` exec typing-ex/systemd/update-stat.sh
