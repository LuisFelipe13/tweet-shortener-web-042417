# Write your code here.
require 'pry'

def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  dictionary_keys = dictionary.keys
  tweet = tweet.split(" ")
  short_tweet = []

  tweet.each do |word|
    if dictionary_keys.include?(word)
      sub_word = dictionary[word]
      short_tweet.push(sub_word)
    else
      short_tweet.push(word)
    end
  end
  short_tweet = short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  dictionary_keys = dictionary.keys
  tweets.each do |tweet|
    short_tweet = []
    tweet = tweet.split(" ")
    tweet.each do |word|
      if dictionary_keys.include?(word)
        sub_word = dictionary[word]
        short_tweet.push(sub_word)
      else
        short_tweet.push(word)
      end
    end
    short_tweet = short_tweet.join(" ")
    puts short_tweet
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.size > 140
    newt_tweet = new_tweet [0..139]
  else
    new_tweet
  end
end
