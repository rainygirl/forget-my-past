import tweepy
import csv

consumer_key = ""
consumer_secret = ""
access_token = ""
access_token_secret = ""
username = ""

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)

with open('tweets.csv', 'rb') as csvfile:

    csv_=csv.reader(csvfile)
    x=0
    for row in csv_ :
        x += 1
        id = row[0]
        try:
            api.destroy_status(id)
        except tweepy.TweepError as e:
            print e
            if e.message[0]['code'] in [144,179,34] : pass
            else : quit()

        print x, row[3], ('https://twitter.com/%s/status/%s [DELETED]' % (username,id) )

    print "Twitter timeline removed!"
