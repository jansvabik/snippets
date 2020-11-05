# get time of the http(s) request
curl -w "DNS:\t\t%{time_namelookup}s\nCONN:\t\t%{time_connect}s\nTLS:\t\t%{time_appconnect}s\nPRETRANSFER:\t%{time_pretransfer}s\nREDIR:\t\t%{time_redirect}s\nTTFB:\t\t%{time_starttransfer}s\n-------------------------\nTOTAL TIME:\t%{time_total}s\n" -o /dev/null -s "$1"
