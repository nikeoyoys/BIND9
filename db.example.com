;
; BIND data file for local loopback interface
;
$ORIGIN example.com.
$TTL	604800
@	IN	SOA	ns1.example.com. hostadmin.example.com. (
			     2023011901	; Serial
			     7200	; Refresh (2 hours)
			     3600	; Retry   (1 hour)
			     1209600	; Expire  (2 weeks)
			     3600       ; Negative Cache TTL, minimum (1 hour)
			     )
; Name server info.
@	IN	NS	ns1.example.com.
; A Record of DNS
ns1	IN	A	35.229.195.182
@	IN	AAAA	::1
; A Record
; Record here.
;
; CNAME Record
www	IN	CNAME	tw.yahoo.com.
