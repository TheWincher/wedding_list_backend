#!/bin/sh
echo "=== DEBUG ==="
echo "DATABASE_URL=$DATABASE_URL"
echo "ADMIN_CODE=$ADMIN_CODE"
echo "FRONTEND_URL=$FRONTEND_URL"
echo "PORT=$PORT"
echo "Testing DB connection..."
pg_isready -d "$DATABASE_URL" || echo "⚠️ DB not ready"
ls -la /app
file ./wedding_list_backend
echo "=== STARTING BACKEND ==="
./wedding_list_backend

