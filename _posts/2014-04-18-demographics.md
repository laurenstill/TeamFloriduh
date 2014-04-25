---
layout: post

title: First Insights
subtitle: "Or How I learned to Trust The Data"
cover_image: blog-cover.jpg
date: 2014-04-18

excerpt: "Good news, CMS really does appear to be blind to race, sex and gender in reimbursement rates.  TL;DR We found what we expected. Go us!"

author:
  name: Lauren Still
  twitter: laurencstill
  gplus: +LaurenStill 
  bio: Collaborator
  image: ls.png
---

Setting a benchmark understanding about how larger datasets behave can be difficult, especially when using new tools and technology. It's important to get some basic clustering and visualization to understand the big picture before diving in.  Today, we tested a few hypotheses that we could _reasonably_ expect to prove positive.  

We want to make sure there are no surprises with the base case before adding on layers of complexity or information sets.  For this initial investigation, we pushed the CMS data into a SQLite database, and ran some basic analysis with the R programing language.  Specifically, we looked at the Medicare reimbursements and how they related to provider sex, age and race. 

As expected, there was no significant difference in bill-out rates based on sex (looking at all the data), and it was the same with the reimbursement rate. This was confirmed with private data for race and age. Turns out, our government is pretty unbiased in how it pays out, and that's worthy a footnote.  



<div align="center"><img src="/images/mcrdemo.png"></div>



<hr>
<hr>
"Statistical thinking will one day be as necessary for efficient citizenship as the ability to read and write." - H.G.Wells