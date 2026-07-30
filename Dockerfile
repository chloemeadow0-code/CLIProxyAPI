FROM eceasy/cli-proxy-api:latest

RUN mkdir -p /CLIProxyAPI

RUN printf 'host: ""\nport: 8317\nauth-dir: "/root/.cli-proxy-api"\napi-keys:\n  - "xiaoju-cpa-key"\ndebug: false\nremote-management:\n  allow-remote: true\n  secret-key: "xiaoju-admin"\n  disable-control-panel: false\nrequest-retry: 3\n' > /CLIProxyAPI/config.yaml

EXPOSE 8317

CMD ["./CLIProxyAPI"]
