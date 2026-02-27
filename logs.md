Ici, je lis mes logs de façon suivante :
  
[ Timestamp ]  [Niveau]  [Source]  Message

Timestamp : [27/Feb/2026:01:37:36 +0100]  
Niveau : 200  
Source : 10958  
Message : "curl/8.14.1"  

root@webserver:~# grep " 200 " /var/log/apache2/access.log  

::1 - - [27/Feb/2026:01:37:36 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"  
127.0.0.1 - - [27/Feb/2026:01:37:48 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"  
127.0.0.1 - - [27/Feb/2026:03:07:09 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"  
::1 - - [27/Feb/2026:03:07:14 +0100] "GET / HTTP/1.1" 200 10958 "-" "curl/8.14.1"  
127.0.0.1 - - [27/Feb/2026:19:42:36 +0100] "GET / HTTP/1.1" 200 1558 "-" "curl/8.14.1"  
192.168.1.19 - - [27/Feb/2026:20:22:45 +0100] "GET / HTTP/1.1" 200 1614 "-" "curl/8.14.1"  
192.168.1.19 - - [27/Feb/2026:20:23:20 +0100] "GET / HTTP/1.1" 200 902 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0"  
192.168.1.19 - - [27/Feb/2026:20:46:20 +0100] "GET / HTTP/1.1" 200 1558 "-" "curl/8.14.1"  
192.168.1.19 - - [27/Feb/2026:20:51:39 +0100] "GET / HTTP/1.1" 200 902 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15"  
192.168.1.19 - - [27/Feb/2026:20:55:59 +0100] "GET / HTTP/1.1" 200 902 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15"  
192.168.1.19 - - [27/Feb/2026:20:56:47 +0100] "GET / HTTP/1.1" 200 902 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0"  
192.168.1.19 - - [27/Feb/2026:20:56:50 +0100] "GET /next.html HTTP/1.1" 200 933 "http://lab-2026.webhop.me:22545/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0"  
192.168.1.19 - - [27/Feb/2026:20:56:58 +0100] "GET /index.html HTTP/1.1" 200 902 "http://lab-2026.webhop.me:22545/next.html" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0"  
192.168.1.19 - - [27/Feb/2026:21:04:51 +0100] "GET /next.html HTTP/1.1" 200 934 "http://lab-2026.webhop.me:22545/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15"  
192.168.1.19 - - [27/Feb/2026:21:10:27 +0100] "GET / HTTP/1.1" 200 902 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0"  
192.168.1.19 - - [27/Feb/2026:21:15:54 +0100] "GET / HTTP/1.1" 200 902 "-" "Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/147.5 Mobile/15E148 Safari/604.1"  
192.168.1.19 - - [27/Feb/2026:21:15:58 +0100] "GET /next.html HTTP/1.1" 200 934 "http://lab-2026.webhop.me:22545/" "Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/147.5 Mobile/15E148 Safari/604.1"  
::1 - - [27/Feb/2026:21:16:22 +0100] "GET / HTTP/1.1" 200 1558 "-" "curl/8.14.1"  

root@webserver:~# grep " 404 " /var/log/apache2/access.log  
192.168.1.19 - - [27/Feb/2026:20:23:20 +0100] "GET /favicon.ico HTTP/1.1" 404 530 "http://192.168.1.19/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0"    
192.168.1.19 - - [27/Feb/2026:20:55:59 +0100] "GET /favicon.ico HTTP/1.1" 404 539 "http://lab-2026.webhop.me:22545/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15"  
192.168.1.19 - - [27/Feb/2026:20:56:48 +0100] "GET /favicon.ico HTTP/1.1" 404 540 "http://lab-2026.webhop.me:22545/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:148.0) Gecko/20100101 Firefox/148.0"  
192.168.1.19 - - [27/Feb/2026:21:10:27 +0100] "GET /favicon.ico HTTP/1.1" 404 539 "http://lab-2026.webhop.me:22545/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:147.0) Gecko/20100101 Firefox/147.0"  
::1 - - [27/Feb/2026:21:22:29 +0100] "GET /page_inexistante.html HTTP/1.1" 404 472 "-" "curl/8.14.1"  
::1 - - [27/Feb/2026:21:22:54 +0100] "GET /page_inexistante HTTP/1.1" 404 472 "-" "curl/8.14.1"  
  
root@webserver:~# sudo awk '{print $1}' /var/log/apache2/access.log | sort | uniq -c | sort -nr  
     17 192.168.1.19  
      8 104.28.92.141  
      5 192.168.1.31  
      5 ::1  
      3 127.0.0.1  
