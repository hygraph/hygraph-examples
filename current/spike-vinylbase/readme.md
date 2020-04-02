### Example by [Jeff Escalante](https://github.com/jescalan)

[Join our Slack](https://slack.graphcms.com)

# GraphCMS, Spike, & Netlify Example 

This is an example static site made with [graphcms](https://graphcms.com/) and [spike](https://spike.cf), and hosted on [netlify](https://netlify.com). You can see the full sample app live [here](https://spike-graphcms.netlify.com/)!

A detailed blog post can be found [here](https://graphcms.com/blog/static-site-generation-using-graphcms-spike-and-netlify).

## Setup

- make sure [node.js](http://nodejs.org) is at version >= `6`
- `npm i spike -g`
- clone this repo down and `cd` into the folder
- run `npm install`
- run `spike watch` or `spike compile`

## Structure

All configuration can be found in the `app.js` file. We use [spike-records](https://github.com/static-dev/spike-records), a general purpose plugin for consuming external data, in order to pull in data from GraphCMS. You can see a basic graphql query for the data that we need. We also transform the data to shed the generic wrapper (`data.allRecords.x`) before piping it into templates, and generate a single view for each item using the `template` option.

The primary views and templates are all found in the `views` folder. View syntax is written in [sugarml](https://github.com/reshape/sugarml), a pug-like whitespace-sensitive html syntax parser for [reshape](https://reshape.ml/). There is no lock-in here though, as you can convert to a [sugarfree syntax](https://github.com/static-dev/spike-tpl-sugarfree) with one simple option and keep all the same layout, looping, and local syntax the same. The markup is quite simple, really.

The css is also very simple and is found in `assets/css`. Very roughly written to follow [gps](https://github.com/jescalan/gps) guidelines. There is no javascript at all on this site as it doesn't require interactivity.
