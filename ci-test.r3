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
result: read rdap:google.com
print-horizontal-line
print result

print LF
print-horizontal-line
print as-yellow {Resolve info about an IP:}
result: write rdap:// 109.81.82.250 ;;same like: read rdap:109.81.82.250
print-horizontal-line
print result

print-horizontal-line
print 'DONE