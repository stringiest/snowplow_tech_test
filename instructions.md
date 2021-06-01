# Snowplow tracking technical assignment instructions - Your first tracked app with Snowplow Micro

We would like you to build an example app that embeds a Snowplow tracker to send behavioral data to [Snowplow Micro](https://github.com/snowplow-incubator/snowplow-micro/). There are set up instructions for Micro in the readme. If you get stuck at all running Micro, reach out on the [Discourse forums](https://discourse.snowplowanalytics.com/) - wrangling with it isn't part of the assignment!

Micro is the smallest version of a Snowplow pipeline, used for testing purposes. It has only the collection and validation steps, holding events in memory rather than a data store. You can see what events it has received by calling the api. Once you have it running, we'd like you to start sending some events.

Snowplow has an [extensive tracker library](https://docs.snowplowanalytics.com/docs/setup-snowplow-on-aws/setup-trackers/). Our most adopted include the JavaScript, iOS, Android, Java and Python trackers. You can pick any tracker for your example. 

We would like you to build a small example app. Feel free to use any existing app you're the sole author of. Framework/theme use is enouraged so you can spend more time writing interesting tracking code. It can be whatever you like. It doesn't need to be production worthy or very featureful, but we are looking for quality code. 

Some ideas to illustrate the kind of thing we're looking for:
- A simple static blog site
- A web service that processes bookings
- A shopping app with products and a basket (no users, payment, etc.)

You can use auto-tracked (e.g. page view, link clicks, form tracking in the JS tracker) and [structured events](https://github.com/snowplow/snowplow/wiki/2-Specific-event-tracking-with-the-Javascript-tracker#custom-structured-events), but we would recommend researching how to define your own and get them emmitted by your app too. 
 
When you're ready to submit, please send us a link to your GitHub repo. Please include a readme introducing us to your project and with details on how to run it. 

To recap:
 - [X] Set up Snowplow Micro
 - [ ] Choose a tracker and experiment with it
 - [ ] Build an example app and embed tracking
 - [ ] Add a readme introducing us to your project
 - [ ] Send us your GitHub repo
 - [ ] Get ready to talk about it with us!

As a guide, we're expecting you to spend 4 +/- 2 hours on this task. We're not expecting a fully functional or expertly designed app, or a sophisticating tracking strategy. We're looking to see how you experiment, learn and solve problems. Most importantly, we're looking forward to speaking with you about it.

Good luck. 