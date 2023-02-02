;
; BIND data file for local loopback interface
;
; $ORIGIN example.com.
$TTL	604800
@	IN	SOA	ns1.example.com. hostadmin.example.com. (
			      3		; Serial
			     1h		; Refresh
			     1m		; Retry
			     3d		; Expire
			     7d  )	; Negative Cache TTL
; Name server info.
@	IN	NS	ns1.example.com.
; A Record of DNS
ns1	IN	A	35.229.195.182
@	IN	AAAA	::1
; A Record
; CNAME Record
www	IN	CNAME	titansoft.com.
