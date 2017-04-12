class TweetsApp

  def call
    puts 'Welcome to Twitter'
    tweets = Tweet.all
    render(tweets)
    puts 'Enter a username'
    username = gets.strip
    puts 'Enter a message'
    message = gets.strip
    tweet = Tweet.new({'username' => username, 'message' => message})
    tweet.save
    tweets = Tweet.all
    render(tweets)
  end

  private

  def render(tweets)
    tweets.each.with_index(1) do |tweet, i|
      puts "#{i}. #{tweet.username} says: #{tweet.message}"
    end
  end
end
