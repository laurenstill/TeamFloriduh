---
layout: post

title: AshleyMadison &amp; Provider Rx Data
subtitle: "Hypotheses can be hard to come by…."
cover_image: blog-cover.jpg
date: 2015-10-18

excerpt: "There’s a pretty substantial link between unethical behavior A and unethical behavior B. And so... TL;DR What can we learn from completely unrelated datasets?"

author:
  name: Lauren Still
  twitter: laurencstill
  gplus: +LaurenStill 
  bio: Collaborator
  image: ls.png
---
So by now the [Ashley Madison hack][1] and subsequent [data leak][2] is old news for most. If you’re still concerned, head over to Troy Hunts’ [Have I Been Pwned][3] page and check if your info somehow ended up in the dump.  In short, due to a coding error where passwords were hashed with both [bcrypt and md5][7], a _compressed_ 10 gigabyte encrypted file of data containing some 11 million passwords was eventually leaked. It contained some 33 million accounts and associated personal information (not just names, passwords, addresses and phone numbers, credit card information, but [personal sexual preferences, objectives, fantasies, chats, graphic pictures][6], etc.) was included in the data dump. Registered emails weren’t validated so a number of those were of the deathstar.gov variety. It’s [estimated][4] that about ⅔ of the emails are legit, but to date, that’s still just an estimate. Breaking it down further, some [15,000 are .mil. or .gov addresses][5], and a substantial number of [legit business domains][8] appear suspect. 

But enough about that. Old news, and a soapbox lecture for basic user account security is best saved for another day. Today I’d rather spend time looking at patterns between behaviors, addictions and links between vices. I’m just going on anecdotal evidence, but I’m sure there’s something in pubmed supporting [cross-addition][9], particularly as it comes to sex and drugs. 

And that’s where the recent CMS Medicare [Provider Utilization and Payment Data: Part D Prescriber][10] dataset comes into play. A disclaimer is warranted here: the goal is not to ‘out’ any physician for their mere appearance of impropriety when it comes to moral grounds. What could be interesting in mashing up these two datasets is seeing what providers with statistically relevant  prescribing habits (read: high outlier) also engaged in various vices. While the Ashley Madison leak makes it the simplest, crossing with other common vices would be the long term goal.  

So what could we learn, and how could we put this information into use to help at-risk providers and better protect patients? Could this type of data research lead to earlier mental and behavioral interventions and redirect provider roles to reduce risk? What implications would it have on general drug abuse populations in states like Florida that are notorious pill-mill destinations.  More questions than answers. 

Right now, we don’t have a solid direction, only an understanding that any research must be done with the most diligent concern for privacy and confidentiality. Following our [Stanford MedX][11] and [Symplur Data Analytics Challenge][12] work on youth suicide prevention, it’s impossible not to notice the link between addiction, substance abuse, and impulsive behaviors. 

So for now we just have a lot of questions and are kicking around a few ideas. As always, we’re open to suggestions for approach or other guidance, because as of right now, we haven’t even settled on a hypothesis. Hopefully as we start digging we’ll have some trends to share with the community and a better sense of direction and purpose. 

<hr>
<hr>
“Be at war with your vices, at peace with your neighbors, and let every new year find you a better man.” - Benjamin Franklin

[1]: http://www.hydraze.org/2015/08/ashley-madison-full-dump-has-finally-leaked/
[2]: http://www.wired.com/2015/08/happened-hackers-posted-stolen-ashley-madison-data/
[3]: https://haveibeenpwned.com/
[4]: http://www.columnfivemedia.com/the-ashley-madison-hack-in-8-charts
[5]: http://pastebin.com/U4QQEaBE
[6]: http://www.theverge.com/2015/8/19/9179037/ashley-madison-data-hack-name-address-phone-birthday
[7]: http://arstechnica.com/security/2015/09/once-seen-as-bulletproof-11-million-ashley-madison-passwords-already-cracked/
[8]: http://news.nationalpost.com/news/ashley-madison-data-leak-who-has-been-exposed-and-what-are-the-implications
[9]: http://www.ncbi.nlm.nih.gov/pubmed/?term=cross+addiction
[10]: https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Part-D-Prescriber.html
[11]: http://medicinex.stanford.edu/2015-glance/
[12]: http://medicinex.stanford.edu/medx-symplur-2015/

