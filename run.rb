require 'csv'
require 'date'
require 'rubygems' 
require 'twitter'

Twitter.configure do |config|
    config.consumer_key = "CONSUMER KEY"
    config.consumer_secret = "CONSUMER SECRET"
    config.oauth_token = "OAUTH TOKEN"
    config.oauth_token_secret = "OAUTH TOKEN SECRET"
end

limit = Date.today - 90
csvcount = CSV.read('./tweets.csv').length

i = 0

CSV.foreach('./tweets.csv').each do |row|
    i += 1
    if i == 1 then
        next
    end
    d = Date.strptime(row[5], '%Y-%m-%d')
    if d < limit and i != csvcount then
        begin
            rtn = Twitter.status_destroy(row[0])
            if rtn then 
                puts row[0] + ' DELETED'
            end
        rescue Exception => err
            puts row[0] + ' ERROR'
            p err
            next
        end
    end
end

