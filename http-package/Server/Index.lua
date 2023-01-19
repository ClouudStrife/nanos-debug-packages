print("Package for testing http compatibility requests")

-- Makes a synchronous HTTP Request
-- DEPRECATED method
local ret = HTTP.RequestSync("localhost:7777", "/", "GET", "", "application/json", false, {})

Console.Log("[Deprecated] HTTP.RequestSync() (Sync)")
Console.Log("Request status: " .. ret.Status) -- 200
Console.Log("Request data received: " .. ret.Data) -- nanos world server

ret = HTTP.Request("localhost:7777", "/", "GET", "", "application/json", false, {})

Console.Log("[New] HTTP.Request() (Sync)")
Console.Log("Request status: " .. ret.Status) -- 200
Console.Log("Request data received: " .. ret.Data) -- nanos world server



-- Makes a asynchronous HTTP Request
-- DEPRECATED method
HTTP.Request("localhost:7777", "/", "GET", "", "application/json", false, {}, function(status, data)
    Console.Log("[Deprecated] HTTP.Request() (Async)")
    Console.Log("Request status: " .. status) -- 200
    Console.Log("Request data: " .. data) -- nanos world server
end)

HTTP.RequestAsync("localhost:7777", "/", "GET", "", "application/json", false, {}, function(status, data)
    Console.Log("[New] HTTP.RequestAsync() (Async)")
    Console.Log("Request status: " .. status) -- 200
    Console.Log("Request data: " .. data) -- nanos world server
end)
