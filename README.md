# PageMon

PageMon is a Bash script designed to monitor specified websites for changes and send notifications. It supports various notification methods including Pushover and native desktop notifications.

## Features

- Monitor multiple websites for changes
- Send notifications via Pushover and desktop notifications
- Configurable check intervals
- Verbose logging with different log levels
- Background execution support
- Customizable configuration and URL list files

## Requirements

- Bash
- `curl` for fetching website content
- `xmllint` for HTML content normalization
- `jq` for JSON parsing (optional, for Pushover notifications)

## Installation

### Using Homebrew

1. Tap the repository (if not already tapped):

   ```bash
   brew tap binarynoir/pagemon
   ```

2. Install PageMon:

   ```bash
   brew install pagemon
   ```

### Manual Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/binarynoir/pagemon.git
   cd pagemon
   ```

2. Make the script executable:

   ```bash
   chmod +x pagemon
   ```

### Installing the Man File

1. Move the man file to the appropriate directory:

   ```bash
   sudo mv pagemon.1 /usr/local/share/man/man1/
   ```

2. Update the man database:

   ```bash
   sudo mandb
   ```

3. View the man page:

   ```bash
   man pagemon
   ```

## Usage

Run the script with the desired options. Below are some examples:

- Monitor a single URL:

  ```bash
  ./pagemon https://example.com
  ```

- Monitor URLs from a file:

  ```bash
  ./pagemon -f urls
  ```

- Run the script in the background:

  ```bash
  ./pagemon -b https://example.com
  ```

- Send Pushover notifications:

  ```bash
  ./pagemon -p -a YOUR_API_TOKEN -u YOUR_USER_KEY https://example.com
  ```

## Configuration

PageMon uses a configuration file to store default settings. The default location is `~/.pagemonrc`. You can initialize a configuration file with default settings using:

```bash
./pagemon --init
```

## Options

### General Options

- `-h, --help`: Display the help message.
- `-V, --version`: Display the script version.

### Configuration and Initialization

- `-c, --config <config_file>`: Specify a custom configuration file.
- `-I, --init`: Initialize the configuration file.
- `-s, --show-config`: Show the configuration settings.
- `-S, --show-config-file`: Show the configuration file.

### URL Management

- `-f, --url-file <file>`: Specify a file containing a list of URLs to monitor.
- `-U, --list-urls`: List all watched URLs.
- `-C, --clean`: Delete all cached files.

### Execution Options

- `-i, --interval <minutes>`: Set the interval between checks (default is 5 minutes).
- `-t, --threshold <percentage>`: Set the threshold percentage for detecting changes (default: 5%).
- `[INT]<url>`: Specify a threshold for a specific URL. This overrides the global threshold setting.
- `-b, --background`: Run the script in the background.
- `-p, --pushover`: Send Pushover notifications.
- `-a, --api-token <token>`: Specify the API token for Pushover notifications.
- `-u, --user-key <key>`: Specify the user key for Pushover notifications.
- `-d, --desktop`: Send desktop notifications using AppleScript.

### Logging and Output

- `-v, --verbose`: Enable verbose output.
- `-l, --log`: Log the log file to the screen.
- `-o, --output <file>`: Specify a custom log file location.
- `-L, --log-level <level>`: Set the log level (FATAL, ERROR, WARN, INFO, DEBUG, TRACE).

### Process Management

- `-K, --killall`: Kill all running instances of the script.
- `-k, --kill <pid>`: Kill a specific instance of the script by PID.
- `-P, --list-pids`: List all running instances of the script.

## Instructions for Running the Tests

To run the tests for the `PageMon` script, follow these steps:

1. **Navigate to the Test Directory**:

   ```bash
   cd test
   ```

2. **Update the Test Configuration File:** Open the test_pagemonrc file in your preferred text editor and ensure it contains the following configuration:

   ```bash
   # PageMon Configuration File
   CONFIG_FILE="./test_pagemonrc"
   URL_FILE="./test_urls.txt"
   CACHE_DIR="./test_cache"
   LOG_FILE="./test_pagemon.log"
   INTERVAL=1
   THRESHOLD=1
   BACKGROUND=false
   PUSHOVER=false
   DESKTOP=false
   VERBOSE=true
   LOG_LEVEL="DEBUG"
   ```

3. **Update the Test URL File:** Open the test_urls.txt file in your preferred text editor and ensure it contains the following URLs

   ```bash
   http://example.com
   http://example.org
   ```

4. **Run the Test Script:**

   ```bash
   ./test_script.sh
   ```

5. **Clean Up Test Files (optional):**

   ```bash
   rm -f ./test_pagemonrc ./test_urls.txt
   rm -rf ./test_cache
   rm -f ./test_pagemon.log
   ```

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## Author

John Smith III

## Acknowledgments

Thanks to all contributors and users for their support and feedback.
