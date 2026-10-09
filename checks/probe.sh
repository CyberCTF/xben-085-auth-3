#!/bin/sh
# A login from outside is refused as not internal.
curl -fsS --max-time 10 -d 'username=a&password=b' http://web/index.php | grep -q 'Access Restricted to Internal Employees only'
