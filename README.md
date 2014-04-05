# RaCHeL Project
Started for Rolling Hills Consolidated Library for their childrens computers.

## Changes
04/5/2014 - Released v1.0-Beta1 using node-webkit and angularjs.
1/09/2014 - Started building a new client using node-webkit.

## Building the new client

Node.js and npm are the first preReqs.

If you are on linux install node using:

`sudo add-apt-repository -y ppa:chris-lea/node.js`
`sudo apt-get update`
`sudo apt-get install nodejs`

Once you have those installed do:

`npm install -g grunt-cli bower`

If you're on linux chances are you'll need to prefix that with `sudo`.

Then cd into the folder and run:
`npm install`

Then
`bower install`

To actually build you then need to run:
`grunt build`


If it gripes about compass you may need to install ruby and do `gem install compass`
**Note these instructions are very likely missing something.  So a little troubleshooting may be required.**
