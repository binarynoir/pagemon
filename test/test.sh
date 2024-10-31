#!/usr/bin/env bash
# Test Script for PageMon
# Description: Tests all functionalities of the PageMon script, including logging.

# Path to the PageMon script
PAGEMONSCRIPT="../pagemon"

# Test URLs
TEST_URL1="http://example.com"
TEST_URL2="http://example.org"

# Configuration file for testing
TEST_CONFIG_FILE="./test_pagemonrc"

# URL file for testing
TEST_URL_FILE="./test_urls.txt"

# Function to run a test
run_test() {
    local description=$1
    local command=$2
    echo "Running test: $description"
    eval $command
    echo "Test completed: $description"
    echo "----------------------------------------"
}

# Initialize configuration
run_test "Initialize configuration" "$PAGEMONSCRIPT --init"

# Show help
run_test "Show help" "$PAGEMONSCRIPT --help"

# Show version
run_test "Show version" "$PAGEMONSCRIPT --version"

# Show configuration
run_test "Show configuration" "$PAGEMONSCRIPT --show-config"

# Show configuration file
run_test "Show configuration file" "$PAGEMONSCRIPT --show-config-file"

# List URLs
run_test "List URLs" "$PAGEMONSCRIPT --list-urls"

# Clean cache
run_test "Clean cache" "$PAGEMONSCRIPT --clean"

# Run in background
run_test "Run in background" "$PAGEMONSCRIPT --background"

# Send Pushover notification (requires valid API token and user key)
# run_test "Send Pushover notification" "$PAGEMONSCRIPT --pushover --api-token YOUR_API_TOKEN --user-key YOUR_USER_KEY"

# Send desktop notification (only on macOS)
# run_test "Send desktop notification" "$PAGEMONSCRIPT --desktop"

# Log to screen
run_test "Log to screen" "$PAGEMONSCRIPT --log"

# Set log level
run_test "Set log level to DEBUG" "$PAGEMONSCRIPT --log-level DEBUG"

# Kill all instances
run_test "Kill all instances" "$PAGEMONSCRIPT --killall"

# List PIDs
run_test "List PIDs" "$PAGEMONSCRIPT --list-pids"

# Kill specific PID (replace 12345 with an actual PID)
# run_test "Kill specific PID" "$PAGEMONSCRIPT --kill 12345"

# Run the main functionality
run_test "Run main functionality" "$PAGEMONSCRIPT $TEST_URL1 $TEST_URL2"

# Test logging functions
run_test "Log FATAL message" "$PAGEMONSCRIPT --log-level FATAL && $PAGEMONSCRIPT --log"
run_test "Log ERROR message" "$PAGEMONSCRIPT --log-level ERROR && $PAGEMONSCRIPT --log"
run_test "Log WARN message" "$PAGEMONSCRIPT --log-level WARN && $PAGEMONSCRIPT --log"
run_test "Log INFO message" "$PAGEMONSCRIPT --log-level INFO && $PAGEMONSCRIPT --log"
run_test "Log DEBUG message" "$PAGEMONSCRIPT --log-level DEBUG && $PAGEMONSCRIPT --log"
run_test "Log TRACE message" "$PAGEMONSCRIPT --log-level TRACE && $PAGEMONSCRIPT --log"

# Clean up test files
rm -f $TEST_URL_FILE $TEST_CONFIG_FILE
rm -rf ./test_cache
rm -f ./test_pagemon.log

echo "All tests completed."
