#!/usr/bin/env awk -f
#
# Computes the number of values.
#
# Usage: count
#
# Input:
#   - a column of numbers
#
# Output:
#   - number of values

BEGIN {
	count = 0
}
{
	count++
}
END {
	print count
}
