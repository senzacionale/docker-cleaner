#!/bin/sh
set -e

# At 00:00 on every 4th day-of-month.
echo "0 0 */4 * * /app/clear.sh" | crontab -

crond -f -L -
