# 🧱 hex-platform

## What is this?

This repository consists of Hex-Platform's "infrastructure as code" definitions. Hex-Platform
utilizes [terraform](https://terraform.io) to apply its configuration to target kubernetes
cluster.


## Components

- Ambassador Edge Stack (north-south)
- Prometheus (metrics server)
- Linkerd (service mesh)
  - Grafana
  - Jaeger
- Knative


## Quick start

Ensure that `curl`, `kubectl` and `terraform` is installed on your system first.

Clone this git repo `git clone
   https://github.com/eserozvataf/hex-platform.git` - and checkout the [tagged
   release](https://github.com/eserozvataf/hex-platform/releases) you'd like to
   use.

Then run the command below,

```sh
$ ./bin/installer
```


## Todo List

See [GitHub Projects](https://github.com/eserozvataf/hex-platform/projects) for more.


## Requirements

* Bash-compatible shell
* cURL
* Kubectl
* Terraform (https://terraform.io/)


## License

Apache 2.0, for further details, please see [LICENSE](LICENSE) file.


## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

It is publicly open for any contribution. Bugfixes, new features and extra modules are welcome.

* To contribute to code: Fork the repo, push your changes to your fork, and submit a pull request.
* To report a bug: If something does not work, please report it using [GitHub Issues](https://github.com/eserozvataf/hex-platform/issues).


## To Support

[Visit my patreon profile at patreon.com/eserozvataf](https://www.patreon.com/eserozvataf)
