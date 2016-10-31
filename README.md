# Project 3 - *iOS_TwitterClient*

**Name of your app** is a basic twitter app to read and compose tweets from the [Twitter API](https://apps.twitter.com/).

Time spent: **12** hours spent in total

## User Stories

The following **required** functionality is completed:

- [√] User can sign in using OAuth login flow.
- [√] User can view last 20 tweets from their home timeline.
- [√] The current signed in user will be persisted across restarts.
- [√] In the home timeline, user can view tweet with the user profile picture, username, tweet text, and timestamp.  In other words, design the custom cell with the proper Auto Layout settings.  You will also need to augment the model classes.
- [√] User can pull to refresh.
- [√] User can compose a new tweet by tapping on a compose button.
- [√] User can tap on a tweet to view it, with controls to retweet, favorite, and reply.

The following **optional** features are implemented:

- [ ] When composing, you should have a countdown in the upper right for the tweet limit.
- [√] After creating a new tweet, a user should be able to view it in the timeline immediately without refetching the timeline from the network.
- [√] Retweeting and favoriting should increment the retweet and favorite count.
- [√] User should be able to unretweet and unfavorite and should decrement the retweet and favorite count.
- [√] Replies should be prefixed with the username and the reply_id should be set when posting the tweet,
- [√] User can load more tweets once they reach the bottom of the feed using infinite loading similar to the actual Twitter client.

The following **additional** features are implemented:

- [√] Even spacing of reply, retweet, favorite and message buttons horizontally, with their count numbers 
- [√] Toggle the buttons and count number when retweet/unretweet or favorite/unfavorite a tweet
- [√] Add loading indicator animation when reloading data from server before refreshing table

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. Implement the multimedia content attached with the tweet
2. Attach photos when compose new tweet

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://github.com/kaileding/iOS_TwitterClient/blob/master/demo1.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
<img src='https://github.com/kaileding/iOS_TwitterClient/blob/master/demo2.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Due to time limit, I didn't implement the countdown of tweet limit

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
