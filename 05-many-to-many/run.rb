require 'pry'
# environment & application setup
# requiring relative and necessary files to make our app communicate
require "./user"
require "./tweet"
require "./like"

coffee_dad = User.new("coffee_dad")
kevin = User.new("KevyWevy")

first_tweet = Tweet.new("need coffee", coffee_dad)
second_tweet = Tweet.new("coffee#", coffee_dad)
third_tweet = Tweet.new("The darkness is comming...", coffee_dad)
coffee_dad.post_tweet("hello")
coffee_dad.post_tweet("the void......")
coffee_dad.post_tweet("coffeee")


kev_1 = Tweet.new("hello", kevin)
kev_2 = Tweet.new("yo", kevin)
kev_3 = Tweet.new("anyone there", kevin)
kev_4 = Tweet.new("sup", kevin)
kevin.post_tweet("why are there only coffee tweets on here?")


coffee_dad.like_tweet(kev_1)
coffee_dad.like_tweet(kev_4)
Like.new(kev_2, coffee_dad)


kevin.like_tweet(third_tweet)
kevin.like_tweet(first_tweet)





binding.pry

puts 'done'
