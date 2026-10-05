# Container Observability

## 404 Error Log Entry

```
172.17.0.1 - - [05/Oct/2026:10:11:53 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

Without application logs, it would be difficult to determine what caused a failure because we would not have the error messages and events leading up to it. The timestamp and IP address show exactly when the problem happened and which client was involved, as in the `/hidden-admin-page` 404 above, which is especially useful when many users are accessing the server at the same time.
