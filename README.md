
Secrets encripted using kubeseal

```bash
kubectl -n youtubegaminglive \
  create secret generic soketi \
  --dry-run=client \
  --from-literal PUSHER_APP_ID=foo \
  --from-literal PUSHER_APP_KEY=bar \
  --from-literal PUSHER_APP_SECRET=ultrasecret \
  --output yaml | kubeseal -o yaml | tee secrets.yml
```

Actual real values were replaced of course.
