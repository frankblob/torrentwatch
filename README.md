# Welcome to 'Torrent Watch' 
## AKA 'contribs/name suggestions are welcome'

Built with Ruby 2.2.0, [Sinatra](http://sinatrarb.com) 1.4.5 and [Nokogiri](http://www.nokogiri.org/) 1.6.5.

### Description of the web app's basic functionality
Torrent Watch lets users opt-in to receive email notifications when new torrents of choice are ready for download. No need to do daily manual searches for newly released torrents, e.g. 'ruby on rails', 'the stranger 720p HD', 'FLAC' or similar.   

Why not get an email when the torrents you seek are released?

#### To-do list?
Sure. Check the [to-do](TODO.md) file. 

#### About me
The project described above seems more complex than actually doable for someone with my current coding skill set. My personal goal is to hack away at this steep challenge and learn as much as possible.  

In short I'm nobody, newbie and non-programmer. Dabbling in my first attempts at Ruby, object-oriented programming and GitHub. Torrent Watch is my first web application attempt besides auto-deploying a [RailsBricks3](http://railsbricks.net) app, since I could not get anything self-coded to work on Heroku :)

##### Ruby questions I currently wonder about... 
1. When do instance variables 'die'? Trying to understand the memory usage of Ruby apps...
2. Is it worth it to manually set an instance variable = nil, when no longer in use? Or will Ruby GC do it for me?
3. Why is GC for symbols great? Should I use symbols more and thereby, as a consequence, optimize the memory usage of the app?
3. Will performance and memory utilization improve by replacing Nokogiri with Ox, Oga or even [Curb](https://rubygems.org/gems/curb), in terms of installed gems alone? Not focucing on the performance of the individual gems (Nokogori vs Ox parsing, for instance), but the number, dependencies and size of installed gems.
4. Is it necessary to implement something akin to [referential integrity](https://github.com/orcasnet/activerecord-referential_integrity) for foreign keys in Sequel? Have done check and delete on "zero associations" in Sequel for now.

## Join this project
All help is welcome. I'm glad to share this project with any interested contributors; newbie, experienced, young and old, english-speaking or english-trying. Contribute as you best can.

For newbies as myself, that would perhaps be [correcting typos or similar](http://www.codenewbie.org/podcast/24-pull-requests) and submitting a [pull request](http://readwrite.com/2014/07/02/github-pull-request-etiquette) as detailed on the friendly, but easily over-stimulating pull request [walk-through](https://help.github.com/articles/using-pull-requests/) on Github. 

Try it - and you have started collaborating! 

Okay, that's it, I guess. 

**Stay cheerful**