#!/bin/bash
start_time=$(date +%s)
sleep 5 
end_time=$(date +%s)
totl_time=$(($end_time-start_time))
echo "total time taken to complete $total_time seconds"