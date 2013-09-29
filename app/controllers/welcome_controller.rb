require 'feedzirra'

class WelcomeController < ApplicationController
  def index
    feed = Feedzirra::Feed.fetch_and_parse("http://online.wsj.com/xml/rss/3_7455.xml")
    @entries = feed.entries
  end
end
