#!/bin/bash

echo "Testing if this works!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
dbt run 
dbt docs generate
dbt docs serve