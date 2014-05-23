---
title: About Stockor API
layout: default
---

Stockor API is a REST API for the Stockor ERP system. It exposes the models and business logic defined in Skr::Core.

It's built using the Grape micro-framework and can be mounted using Rack or other methods as outlined at: http://intridea.github.io/grape/docs/index.html#Mounting

For an example using Rails, modify the config/routes.rb file and add:


    mount Skr::API::Root => '/stockor'


Further details are coming as soon as the interface is firmed up.
