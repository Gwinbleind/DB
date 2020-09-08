#!/bin/bash
# Create dump `example` and restore to `sample`
mysqldump -u test -p --where="true limit 100" example > dump1.sql
mysql -u test -p sample < dump1.sql