---
layout: post
title:  "Everyone. To the cloud!"
date:   2016-02-27 12:51:24 +0000
tags:
- aws
- lambda
- serverless
---

We're all prone to it. You need something to work, you mock up a quick script, stick it on a server somewhere and forget about it.

[Serverless](http://www.serverless.com) recently announced support for scheduled Lambda events which means not only can it manage your RESTful APIs it can now also manage all those ad-hoc scripts you have kicking around.

Scheduled events are just the same as any other Serverless functions, with the exception of the following snippet needing to be added to `s-function.json`:

    "events": [
      {
        "name": "schedule",
        "type": "schedule",
        "config": {
          "enabled": true,
          "schedule": "rate(5 minutes)"
        }
      }
    ]

Once you've deployed your shiny new function, all that's left to do is associate the CloudWatch Event (defined above) to your function by running:

`sls event deploy`

Voila!
