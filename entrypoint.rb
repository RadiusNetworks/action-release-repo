# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'
require 'octokit'

client = Octokit::Client.new(access_token: ENV['GITHUB_API_TOKEN'])
puts client.user.inspect

