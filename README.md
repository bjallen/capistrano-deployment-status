# Capistrano::DeploymentStatus

A task for Capistrano v3 which adds a simple html page to your deployed rails app to show the details of the deployment.

* application
* branch/tag
* deploy time
* deployed by
* scm revision
* release timestamp

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-deployment-status'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-deployment-status

## Usage

Require the gem in your Capfile:

```
require 'capistrano/deployment_status'
```

Currently, that's it. A task will run at the end of the deploy that will place the rendered file wherever you'd like. By default it's destination is public/deployment_status.html. You can override this default with:

```
set :deploy_status_destination, "app/views/admin/secret_status_file.html"
```

## Roadmap

The final feature I'm planning to implement is to allow a custom template. This would allow full control over content and styling. It could also be generated and then saved as an .html.erb file for further processing at runtime.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
