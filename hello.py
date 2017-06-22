def app(env, start_response):
    data = parse_qs(env['QUERY_STRING'])
    body = [bytes(i + '\n', 'ascii') for i in environ['QUERY_STRING'].split('&')]
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return body