hugo && aws s3 sync public/ s3://docs-dev-team-tools/ --delete

echo "Sending message to service-log"

API_URL="https://api.dev-team-tools.com/service-event-log/log"
TOKEN="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImY2OWEyY2FlLTVlNzYtNGRkNC04ZjJjLTcwYzFmNmRiYWQwMyIsImNvbXBhbnlJZCI6IjI2YjNlNzQ1LTJiZTEtNDg5MC1hNDI0LTk5NzJkNmNjMjc0MSIsInBlcm1pc3Npb25zIjpbeyJuYW1lIjoicmVhZFN3aXRjaCIsInZhbHVlIjpmYWxzZX0seyJuYW1lIjoibGlzdFN3aXRjaGVzIiwidmFsdWUiOmZhbHNlfSx7Im5hbWUiOiJsb2dTZXJ2aWNlRXZlbnQiLCJ2YWx1ZSI6dHJ1ZX1dLCJpYXQiOjE3NTcyNzMwNjIsImV4cCI6MTc4ODgwOTA2Mn0.hITTXEELXcBtzYEioG8X_NkC6kPDNQmqkjxvXQvgCBtLnAjdVLc38znZmMpFSkMeMeBH7JXvUKhmukhhzWdPOr55dfxdIaT6KnA4SyuPHB2b7n3_6TznIMgFMAROxsAaOe9Pn-qTItMxMDKvZ8wib8GEJ10gicHNru4JbOGbxbw8TSNliMl78oQPn7YSSXSJmJ5WhBR3itGyMrXaqwLGKe3Gr5pb-ycfzZTZI8Chl-Gr-fp3FKzFVRvdrZyex4JsEJL7RkVI1H7iZoMtyUqV2HqXNw7Fnqouy0QskWES2PH5U72fZuJDgMJP5ZTcZfTXZ3NM-PbLI6O_Ip--M8Xg0w"

curl -X PUT "$API_URL" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "serviceId": "c393e841-7dbe-468f-afef-15b36b7bb01b",
    "message": "Latest documentation has been deployed",
    "tags": ["deployment"]
  }'

echo "Finished deployment"
