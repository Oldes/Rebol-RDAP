[![Gitter](https://badges.gitter.im/rebol3/community.svg)](https://app.gitter.im/#/room/#Rebol3:gitter.im)

# Rebol/RDAP

Registration Data Access Protocol ([RDAP](https://about.rdap.org/)) scheme for [Rebol3](https://github.com/Oldes/Rebol3)


## REST API Usage example

```rebol
;; Import the module
import rdap

;; Collect all available info about a domain
data: read rdap://google.com

;; Collect info about an IP
data: write rdap:// my-ip?
```

By default, the scheme prints basic output to the console. This can be disabled by adjusting the RDAP verbosity level in the log options.
```rebol
system/options/log/rdap: 0
```
