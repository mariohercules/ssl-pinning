# ssl-pinning
## SSL Pinning with iOS demoing


* Generate certificate from host

```bash

openssl s_client -connect www.google.com:443 -servername www.google.com < /dev/null | openssl x509 -outform DER > googleCert.cer

```
