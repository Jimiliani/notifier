#!/bin/sh

until timeout -s 10.0 celery -A project inspect ping; do
    >&2 echo "Celery workers not available"
done

echo 'Starting flower'
celery -A notifier flower --broker=reids://redis:6379/0 --port=8888
