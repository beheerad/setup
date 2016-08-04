#!/bin/bash

# This script is used to launch Tor and Burpsuite in order to complete the natas chalenges

echo "Launching Burpsuite"
burpsuite &

echo "Launching Tor"
tor 
