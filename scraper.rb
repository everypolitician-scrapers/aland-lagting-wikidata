#!/bin/env ruby
# encoding: utf-8

require 'pry'
require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/aland-lagting-wikipedia', column: 'wikiname')
EveryPolitician::Wikidata.scrape_wikidata(names: { sv: names }, output: true)
warn EveryPolitician::Wikidata.notify_rebuilder
