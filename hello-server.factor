USING: accessors command-line io io.encodings.ascii io.servers 
kernel math.parser namespaces sequences threads ;


IN: time-server

: handle-request ( -- )
    "Hello from the factor server!" print ;

: <hello-server> ( port -- threaded-server )
    ascii <threaded-server>
        "hello-server" >>name
        swap >>insecure
        [ handle-request ] >>handler ;

: hello-server-main ( -- )
    command-line get [ 1234 ] [ first string>number ] if-empty
    <hello-server> start-server wait-for-server ;

MAIN: hello-server-main