# TCP-BLAST

![Version](https://img.shields.io/badge/version-1.1-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Bash](https://img.shields.io/badge/shell-bash-orange)

⚡ **tcp-blast** is a professional-grade, extremely fast TCP port scanner written purely in Bash. It leverages `/dev/tcp` and massive parallelism to deliver results instantly, even on minimal systems without `nmap` or `nc`.

---

```text
████████╗ ██████╗ ██████╗       ██████╗ ██╗      █████╗ ███████╗████████╗
╚══██╔══╝██╔════╝ ██╔══██╗      ██╔══██╗██║     ██╔══██╗██╔════╝╚══██╔══╝
   ██║   ██║  ███╗██████╔╝█████╗██████╔╝██║     ███████║███████╗   ██║
   ██║   ██║   ██║██╔═══╝ ╚════╝██╔══██╗██║     ██╔══██║╚════██║   ██║
   ██║   ╚██████╔╝██║           ██████╔╝███████╗██║  ██║███████║   ██║
   ╚═╝    ╚═════╝ ╚═╝           ╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝

                             tcp-blast v1.1 | Fast Bash TCP Port Scanner
                                                          Made By @4nuxd
------------------------------------------------------------------------
```

## ✨ Features

- 🚀 **Extreme Speed**: Parallelized scanning using `xargs` with configurable thread counts.
- 📦 **Zero Dependencies**: Requires only Bash, `timeout`, and `xargs`.
- 🔍 **Service Detection**: Automatically identifies common services (SSH, HTTP, MySQL, etc.).
- 🌐 **Web Server Verification**: Probes web ports to detect server headers (e.g., Nginx, Apache).
- 📊 **Professional Output**: Real-time streaming results in a structured table format.
- 🧵 **Scalable Threads**: Configurable up to 5000 threads for aggressive enumeration.
- 🛠 **CLI Interface**: Robust command-line flags for automation and efficiency.
- 🎨 **Rich UI**: High-impact ASCII banner and colorized status reporting.

---

## 📦 Installation

To install **tcp-blast** globally on your system:

```bash
git clone https://github.com/4nuxd/tcp-blast.git
cd tcp-blast
sudo ./install.sh
```

Once installed, you can run the tool from anywhere using:
```bash
tcp-blast -t <target> -p <ports>
```

---

## 🚀 Usage

```bash
tcp-blast -t <target> -p <ports> [options]
```

### Options
- `-t <ip|host>`   : Target IP or Hostname (Required)
- `-p <ports>`     : Port range (e.g., `1-65535`) or specific list (`80,443,22`)
- `-w <threads>`   : Number of parallel threads (Default: 50)
- `-o <timeout>`   : Connection timeout in seconds (Default: 1)
- `-h`             : Show help menu
- `-v`             : Show version

### Examples

**Scan common web ports:**
```bash
tcp-blast -t 127.0.0.1 -p 80,443,8080
```

**Brute-force a full range with high parallelism:**
```bash
tcp-blast -t 192.168.1.1 -p 1-65535 -w 500
```

**Fast enumeration for CTF / Penetration Testing:**
```bash
tcp-blast -t target.thm -p 1-1024 -w 100 -o 2
```

---

## ⚖️ License
Distributed under the MIT License. See `LICENSE` for more information.

Developed with ❤️ by **[@4nuxd](https://github.com/4nuxd)**
