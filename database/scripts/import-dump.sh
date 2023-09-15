#!/bin/bash

echo "Importing dump to database..."

mysql -u henriquelportal -p@plication_test lportal < dump.sql

echo "Imported dump to database."