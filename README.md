# Log Archive Tool

## Description
The Log Archive Tool is a simple and efficient Bash script designed to automate log archiving on Linux systems. It compresses logs from a specified directory into a timestamped `.tar.gz` archive, storing it in a designated directory for easy management and future reference. The tool also logs the date and time of each archive creation for tracking purposes.

[Project URL](https://roadmap.sh/projects/log-archive-tool)

## Features
- Compresses logs from the specified directory into a single `.tar.gz` file.
- Stores archives in a separate directory for organization.
- Logs the date and time of each archive for easy tracking.
- Handles permission errors and provides informative output.

## Installation
Clone the repository and navigate to the script directory:

```bash
git clone <repository-url>
cd log-archive-tool
```

## Usage
Run the script with the following syntax:

```bash
sudo ./log-archive-tool.sh <log-directory>
```

### Example
To archive logs from `/var/log/`, run:

```bash
sudo ./log-archive-tool.sh /var/log/
```

**Note:** The script must be run with `sudo` since it accesses system log directories.

## Output
- The script will create a compressed archive named in the format:

```
logs_archive_YYYYMMDD_HHMMSS.tar.gz
```

- The archive is stored in the `archives` subdirectory within the specified log directory.

## Log File
The script logs the archive creation date, time, and file name to `archive.log` in the same archive directory.

## License
This project is licensed under the MIT License.

## Author
Jacob Akotuah

## Contributing
Contributions are welcome! Please fork the repository and create a pull request.

## Contact
For questions or feedback, please contact me at jacobakotuah@gmail.com.
