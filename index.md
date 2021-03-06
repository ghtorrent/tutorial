## GHTorrent tutorial

by _[Georgios Gousios](http://gousios.org)_ and _[Diomidis Spinellis](http://spinellis.gr)_

This is the web page for the GHTorrent tutorial given as an [ICSE 2017 technical briefing](http://icse2017.gatech.edu/?q=technical_briefings_program)

### Contents

We plan to cover at least the following aspects:

* GitHub data collection strategies, including querying the API, using online services such as GitHub Archive and GHTorrent.
* Using GHTorrent to sample appropriate repositories for various types of research questions.
* [Writing, managing, and optimizing complex and expensive relational queries on GHTorrent relational data](https://www.spinellis.gr/git-mine-briefing/).
* Using GHTorrent effectively: understanding the data collection challenges and avoiding common pitfalls.
* Copyright and privacy issues when using the GitHub data.

### Downloads

Our tutorial will be based on the following data sources:

* [SQLite3 database](https://github.com/ghtorrent/tutorial/blob/master/rxjs-ghtorrent.db). You can use this directly with a command line or a graphical SQLite3 database editor.
* [MongoDB DB dump](https://github.com/ghtorrent/tutorial/blob/master/rxjs-mongo.tar.gz). To restore this, you will need a running MongoDB.

To create them, we have run the default GHTorrent data collection process
on the [ReactiveX/rxjs](https://github.com/ReactiveX/rxjs) project.
The data are current on Feb 14.

### Before you come to the Technical Briefing

We plan to make the technical briefing an interactive session where we will work together on common GHTorrent repository 
mining tasks. To make the session as productive as possible please make sure that:

* You bring your (macOS/Linux/Unix/Bash on Ubuntu on Windows) laptop!
* Install SQLite3 and download our [SQLite3 database](https://github.com/ghtorrent/tutorial/blob/master/rxjs-ghtorrent.db)
* Clone [simple-rolap](https://github.com/dspinellis/simple-rolap) and [rdbunit](https://github.com/dspinellis/rdbunit/)
* Install _rdbunit_
* Install Git, make, Python, and GraphViz

### Have your say!

What would you like to see covered in the technical briefing?

<div id="disqus_thread"></div>
<script type="text/javascript">
var disqus_shortname = 'ghtorrent';
/* * * DON'T EDIT BELOW THIS LINE * * */
(function() {
 var dsq = document.createElement('script');
 dsq.type = 'text/javascript'; dsq.async = true;
 dsq.src = '//' + disqus_shortname +
 '.disqus.com/embed.js';
 (document.getElementsByTagName('head')[0]
  ||
  document.getElementsByTagName('body')[0]).appendChild(dsq);
 })();
</script>
<a href="http://disqus.com" class="dsq-brlink">comments</a>
