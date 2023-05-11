require "discordrb"
bot_token = ""
@my_bot = Discordrb::Bot.new token: "#{bot_token}" #, client_id: "#{bot_client_id}"

# @my_bot.message content: /^<my\-prefix>\s+sum\s+.+$/ do |event|
#   args = event.content.split " " # "event.content" is the message
#   numbers = args.collect &:to_i # turns each string in "args" into a number
#   sum = numbers.collect &:+    # adds up everything in "numbers"
#   event.respond sum
#   # I could have just done `event.respond event.content.split(" ").collect(&:to_i).collect(&:+)` btw
# end
@my_bot.message(with_text: "Hey Bot!") do |event|
  event.respond "Hi, #{event.user.name}!"
end

@my_bot.message(with_text: "Ping!") do |event|
  event.respond "Pong!"
end

@my_bot.run
