#!/bin/bash
# Create dump `example` and restore to `sample`
mysqldump -u test -p example > dump1.sql
mysql -u test -p sample < dump1.sql