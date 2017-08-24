# recipooser

require 'uri'
require 'net/http'

url = URI("http://api.yummly.com/v1/api/recipes?_app_id=38363d9d&_app_key=7038dcc0fec8f2e7606b0161a3ec953e&q=onion%20soup")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["cache-control"] = 'no-cache'
request["postman-token"] = 'a5567308-641e-89cb-35c9-b40f5a463e63'

response = http.request(request)
response.read_body