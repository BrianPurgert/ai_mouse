class Fixnum < Integer; end


require 'auto_click'
require 'json'
require 'yaml'
require 'amazing_print'
require 'openai'
include AutoClickMethods
OpenAI.configure do |config| config.access_token = ENV.fetch("OPENAI_ACCESS_TOKEN")
config.request_timeout                           = 140
end
client       = OpenAI::Client.new
instructions = File.read('content.txt')
puts instructions
response = client.chat(parameters: { model: "gpt-4", messages: [{ role: "user", content: instructions }], temperature: 0.7, })
puts gpt_code = response.dig("choices", 0, "message", "content")
extracted_code = gpt_code[/```ruby\n(.+?)\n```/m, 1] || gpt_code
puts "Extracted code:"
puts extracted_code
extracted_code.each_line do |line| puts "➥\t#{line}"
sleep 2
eval(line)
end
eval(extracted_code)
# key_stroke('win')
# sleep 0.5
# type('paint')
# sleep 0.5

