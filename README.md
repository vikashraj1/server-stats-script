# 📈 Server Performance Stats Tool

Bash script to quickly analyze server performance on Linux.

This project is created as part of the [Server Performance Stats Project](https://roadmap.sh/projects/server-stats).


## 🌟 Features

- CPU usage
- Memory usage
- Disk usage
- Top 5 CPU processes
- Top 5 memory processes

## 🖥️ Usage

```bash
# clone the repository
git clone https://github.com/vikashraj1/server-stats.git
cd server-stats

# make the script executabe and run
chmod +x server-stats.sh
./server-stats.sh
```


<details>
  <summary>Sample output</summary>

```text
System Resource Usage
-------------------------------------------------------
Total CPU usage:
1.93%
-------------------------------------------------------
Total memory usage:
total = 3918M
used = 240M (6%)
cached = 475M (12%)
free = 3202M (81%)
-------------------------------------------------------
Total disk usage:
total = 39G
used = 9.7G (25%)
free = 30G (75%)
-------------------------------------------------------
Top 5 processes by CPU usage:
%CPU% - PID - COMMAND
1.3% - 1 - /sbin/init
0.9% - 731 - /usr/lib/snapd/snapd
0.9% - 738 - /usr/bin/containerd
0.6% - 453 - /lib/systemd/systemd-udevd
0.5% - 899 - /usr/bin/dockerd
-------------------------------------------------------
Top 5 processes by memory usage:
%MEM% - PID - COMMAND
1.9% - 899 - /usr/bin/dockerd
1.0% - 738 - /usr/bin/containerd
0.7% - 731 - /usr/lib/snapd/snapd
0.5% - 822 - /usr/bin/python3
0.4% - 418 - /lib/systemd/systemd-journald
```

</details>
