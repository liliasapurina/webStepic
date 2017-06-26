def app(environ, start_response):
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    start_response(status, headers)
    body = [bytes(i + '\r\n', 'ascii') for i in environ['QUERY_STRING'].split('&')]
    return body

