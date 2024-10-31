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
