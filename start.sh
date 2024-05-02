M]
echo "Starting server..."
java -jar [filename].jar &
pid=$!
‎
while true; do
    if ! kill -0 $pid 2>/dev/null; then
        echo "Detected server in crashed/stopped state!"
        echo "Restarting..."
        java -jar [filename].jar &
        pid=$!
    fi
    sleep 5 
done
