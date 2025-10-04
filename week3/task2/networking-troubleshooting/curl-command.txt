===Curl command===
====================
Status code: 200 means the curl request to the url/website was successfull
==============================

HTTP/2 200 
content-type: text/html
content-length: 3011
date: Sun, 28 Sep 2025 13:16:48 GMT
last-modified: Wed, 23 Apr 2025 20:34:21 GMT
etag: "6f8ebe49f839c609de767e39036c136b"
x-amz-server-side-encryption: AES256
x-amz-version-id: null
accept-ranges: bytes
server: AmazonS3
x-cache: Miss from cloudfront
via: 1.1 b13220310167b149a604df44712b1d08.cloudfront.net (CloudFront)
x-amz-cf-pop: LHR5-P3
x-amz-cf-id: 7zCCmNjNvKjkXbRSUCpea16tlYyI1Z31X11NbvmyuoYH5DW4M-D3FQ==

==============================
Status code: 301 means request was succesfull, but the resource or website you trying to access has been moved. 
This also happens when the website you are trying to access only allows https request on port 443.
==============================

HTTP/1.1 301 Moved Permanently
Server: CloudFront
Date: Sun, 28 Sep 2025 13:22:24 GMT
Content-Type: text/html
Content-Length: 167
Connection: keep-alive
Location: https://flixnets.co.uk/
X-Cache: Redirect from cloudfront
Via: 1.1 87cf72c437234cbf39f4ff898bdb2088.cloudfront.net (CloudFront)
X-Amz-Cf-Pop: LHR5-P3
X-Amz-Cf-Id: JqaCBFiH_SdnFV7OPuYZ9Et8TwR_iVe40C2TqrKx-ZO7zG6gPKO2Rw==

Notice the Location key: value

==============================
Status code: 403 means you trying to access a resource you are not allowed access to without authentication
==============================

HTTP/2 403 
content-type: application/xml
server: AmazonS3
date: Sun, 28 Sep 2025 13:31:50 GMT
x-cache: Error from cloudfront
via: 1.1 d3d0d17e434973630c1010bc54606844.cloudfront.net (CloudFront)
x-amz-cf-pop: LHR5-P3
x-amz-cf-id: FBvvhcSSW5aVdP1bZuu6jSioCNuX5qZSRFM1Y7n9_6PGg5KFe1avdA==


==============================
Status code: 404 means the server coulde not find the specific resource or webpage. Thsi can also mean the server is not reachable.
==============================

HTTP/2 404 
accept-ranges: bytes
content-length: 1256
content-type: text/html
etag: "84238dfc8092e5d9c0dac8ef93371a07:1736799080.121134"
last-modified: Mon, 13 Jan 2025 20:11:20 GMT
server: AkamaiNetStorage
expires: Sun, 28 Sep 2025 18:02:49 GMT
cache-control: max-age=0, no-cache, no-store
pragma: no-cache
date: Sun, 28 Sep 2025 18:02:49 GMT
alt-svc: h3=":443"; ma=93600

==============================
Status code: 500 mean internal server error, this happens when teh request can not be fufilled. 
Usually due to missconguration during deployment,incorrect firewall configuration and lost of infrastructure e.t.c.
==============================

It's difficult to reproduce a 500 error
