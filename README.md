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

1. Clone the repository:
    ```bash
    git clone https://github.com/binarynoir/pagemon.git
    cd pagemon
    ```

2. Make the script executable:
    ```bash
    chmod +x pagemon
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

- `-f, --url-file <file>`: Specify a file containing a list of URLs to monitor.
- `-U, --list-urls`: List all watched URLs.
- `-C, --clean`: Delete all cached files.
- `-K, --killall`: Kill all running instances of the script.
- `-L, --list`: List all running instances of the script.
- `-k, --kill <pid>`: Kill a specific instance of the script by PID.
- `-i, --interval <minutes>`: Set the interval between checks (default is 5 minutes).
- `-c, --config <config_file>`: Specify a custom configuration file.
- `-I, --init`: Initialize the configuration file.
- `-s, --show-config`: Show the configuration settings.
- `-b, --background`: Run the script in the background.
- `-p, --pushover`: Send Pushover notifications.
- `-a, --api-token <token>`: Specify the API token for Pushover notifications.
- `-u, --user-key <key>`: Specify the user key for Pushover notifications.
- `-d, --desktop`: Send desktop notifications using AppleScript.
- `-v, --verbose`: Enable verbose output.
- `-l, --log`: Log the log file to the screen.
- `-o, --output <file>`: Specify a custom log file location.
- `-L, --log-level <level>`: Set the log level (FATAL, ERROR, WARN, INFO, DEBUG, TRACE).
- `-V, --version`: Display the script version.
- `-h, --help`: Display the help message.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## Author

John Smith III

## Acknowledgments

Thanks to all contributors and users for their support and feedback.

