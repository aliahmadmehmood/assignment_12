import multiprocessing

bind = '0.0.0.0:5000'

workers = multiprocessing.cpu_count() * 2 + 1

# Number of worker processes
#workers = 10

# Number of threads per worker
threads = 2

# Worker class (asynchronous worker)
worker_class = 'gevent'

#accesslog = '/var/log/gunicorn/access.log'
#errorlog = '/var/log/gunicorn/error.log'
loglevel = 'info'
timeout = 30
keepalive = 2
preload_app = True
max_requests = 1000
max_requests_jitter = 50

