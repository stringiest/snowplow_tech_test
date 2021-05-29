# Tracked blog app with Snowplow Micro
This app was created as the technical test for an application to Snowplow Analytics. It takes a simple blog app, and uses Snowplow Micro to track behavioural data for the app.

## Project Set-up
### Snowplow Micro
Snowplow Micro was set up using the instructions at [Snowplow Micro](https://github.com/snowplow-incubator/snowplow-micro/).

### Blog 
I created a blog app using Ruby on Rails, tested using Rspec and Capybara, with a PostgreSQL database.

### Tracker
I used the Ruby tracker from the [Snowplow Analytics tracker library](https://docs.snowplowanalytics.com/docs/setup-snowplow-on-aws/setup-trackers/).

## Quick Start

1. Clone this repo
2. cd into the new folder
3. run `bundle install`
4. create the development and test databases in postgresql
5. run `rails db:migrate` to run migrations on database

## Progress notes
### 29/05/2021
Set up rails project. Had initial read through of Snowplow Micro set-up and the Ruby tracker documentation.

## Extensions to Project
