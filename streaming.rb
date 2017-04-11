#!/usr/bin/env ruby

require 'json'
require 'bunny'

conn = Bunny.new(:host => '127.0.0.1', :port => 5672,
                 :username => 'streamer', :password => 'streamer')
conn.start
ch  = conn.create_channel
exchange = ch.topic('ght-streams', :durable => true)

q = ch.queue('gousiosg_queue', :auto_delete => true)
q.bind(exchange, :routing_key => 'ent.commits.insert')

q.subscribe do |delivery_info, properties, payload|
  commit = JSON.parse(payload)
  repo = commit['url'].split(/\//)[4..5].join('/')
  commit['files'].each do |f|
    #puts "Examining repo=#{repo}, sha=#{commit['sha']} file=#{f['filename']}"
    next unless /passw[or]*d.*[:=].*/.match? f['patch']
    puts "Password found! repo=#{repo}, sha=#{commit['sha']}"
  end
end

puts "Press any button to stop..."
gets
