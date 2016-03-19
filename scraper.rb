#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

sv_names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/aland-lagting-wikipedia', column: 'wikiname')
fi_names = WikiData::Category.new( 'Luokka:Ahvenanmaalaiset poliitikot', 'fi').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { sv: sv_names, fi: fi_names }, output: false)
