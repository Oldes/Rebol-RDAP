Rebol [
	title: "Rebol/RDAP CI test"
]

print ["Running test on Rebol build:" mold to-block system/build]
system/options/quiet: false
system/options/log/rebol: 4
system/options/log/http: 0

;; Ensure that a fresh extension is loaded:
try [system/modules/rdap: none]
;; Set the modules directory to the current location:
system/options/modules: what-dir

print as-yellow {Import the RDAP module:}
import 'rdap

;- GraphQL API tests...
print-horizontal-line
print as-yellow {Resolve info about a domain:}
result: read rdap://root.cz
print-horizontal-line
print result

print LF
print-horizontal-line
print as-yellow {Resolve info about an IP:}
;; first get our current IP
ip: my-ip?
;; now use it in a query
result: write rdap:// ip
print-horizontal-line
print result

print-horizontal-line
print 'DONE