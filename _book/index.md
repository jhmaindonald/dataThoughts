--- 
title: 'The Skeptical Data Analyst'
subtitle: "Think again --- examples that inform and educate"
author: "John Maindonald"
date: "2021-09-22"
site: bookdown::bookdown_site
documentclass: book
classoption: b5paper
fontsize: 10pt
urlcolor: blue
linkcolor: red
bibliography: [book.bib, packages.bib, dataSense.bib]
biblio-style: apalike
link-citations: yes
github-repo: rstudio/bookdown-demo
description: ""
---



\renewcommand{\bibname}{References}

# Preface {-}

> It ain't what you don't know that gets you into trouble.
> Its what you know for sure that just ain't so.
> [Advice attributed to Mark Twain]

The questions that data and data analysis may be able to answer can 
often be stated simply. This may encourage the layperson to believe 
that the answers are similarly simple. Often, they are not. Be 
prepared for unexpected subtleties. Data have a context.  That 
context has to be understood and to feed into the way that the data 
are used, if meaningful conclusions are to be drawn.  This book 
aims to identify some of the issues that arise in making sense of 
data, and to document common misunderstandings.

Humans are programmed, by inheritance and by conditioning, to
respond quickly to signs of immediate danger.  Too often, we
respond quickly and without careful thought in situations that
call for a carefully reasoned response.  Or, we may not have
the skills needed for a carefully reasoned judgment.  Taking
our cue from Kahneman's book "Thinking Fast and Slow"^[@kahneman_2013]
it is helpful to think about the psychology involved when 
humans make judgments into two types, which Kahneman calls System 1 
(jumping quickly to a conclusion) and System 2 (pondering). 
These are a useful starting point in identifying the common traps
to which humans are prone.  Those who know and understand the traps
are better placed to avoid them.

This present booklet avoids detailed discussion of methodology,
instead focusing on what Kahneman calls "educating gossip", with
examples taken from the media and from the scientific literature.
Examples are chosen for the insight that they may provide, both
those that show effective critical processes at work, and those
that do not.

When they function well, scientific processes work to avoid the
traps that will be discussed.  They fail often enough that
examples of failure are not too hard to find.  In some cases,
the critique that matters happens after papers are published.

In areas where the nature of the work requires cooperation between 
scientists with a wide range of skills, and where data is shared, 
those involved in the research provide a check on each other.
Papers may be sent for comment to other researchers, or posted on 
the net for comment, prior to formal submission for publication.
This allows informed and incisive criticism, with the refereeing 
process providing supplementary checks.

Cases where scientific processes have clearly failed are
commonest where scientists work as individuals or in small groups
with limited outside checks, the refereeing processes that have
been common to date are limited in what they can do. Concerns
about reproducibility, especially in wet laboratory biology and
in psychology, have in the past decade attracted extensive
attention in the pages of Nature, Science, the Economist,
psychology journals, and elsewhere.  Among other needed changes,
publication needs to become a staged process that moves from 
"this is worth a second look" to "has been independently 
replicated" to "established result".

This booklet has as its intended audience, as well as practising 
researchers, informed laypeople with an interest in science and 
in data-based decision-making.  The critical processes and skills
that are discussed have wide application, both in everyday and
in professional life.

# A summary of points that are discussed  {-}

1. Understand the psychology  --- why the showcase of fallacies
    +  Recognize and avoid the mental traps to which humans are prone.
2. Graphs can reveal surprises. They can also be drawn 
so that they deceive.  Take care! 
    + Choice of one or both scales such that equal relative
    changes mark out equal distances on the scale may show 
    patterns that are not otherwise obvious.
3. From hindsight to insight --- it is easy to be deceived.
    + If a sportsperson is at the top of their form, the only 
way to go is down. If at the bottom, the only way is up.
    + This is true also for success in business.
    + Chance, as well as form, obviously plays a part.
4. Medicine and health provides a good context into which to study
a number of important issues. What causes cholera – bad air or bad water? 
 Does drinking coffee help or harm health? 
    + Randomized trials, if done rigorously, are a gold standard.
    + Participants must closely reflect the population to which
results will be applied.
    + Think carefully about the outcome measure.  Thus, is it
    "cancers" found?  Or is it "deaths" within a stated timeframe.
    + Population studies, where adjustments are needed 
to account for prior differences between the two (or more)
groups, more readily mislead.
5. Mistakes that arise from statistical misunderstandings
can have serious consequences.
    + This is the case also for fraudulent manipulation of
    data and/or evidence.
6. Weighting paradoxes appears in many different guises.
A notable example is the Yule-Simpson paradox, which arises 
because we have naively added numbers in ways that give more 
weight to some combinations of effects than to others. 
7. What direction does the correlation go? 
    + Tall fathers are likely to have tall sons, but shorter than themselves. 
    + What is hard to grasp is that the effect goes on both directions.
Tall sons are likely to have tall fathers, but shorter than themselves.
The phenomenon known as "regression to the mean", 
goes in both directions.
8. Careful checks are needed when the attempt is made to use
observational data to establish causation.
    + In group comparisons, adjustments are typically needed 
to account for prior differences between the two (or more)
groups.
    + An overwhelming case can sometimes be made, as in the link
    between smoking and lung cancer, by bringing together multiple 
    independent lines of evidence.
9. Results become part of established science when they have
survived informed critique. Work that claims to revise or overturn
established results has itself to survive the same informed critique.
    + Uninformed critique is common.  Watch for the 
tricks that are used in the attempt to discredit established
scientific results that detractors find inconvenient.
    + When presented with scientific (or any) claims, ask/check
    whether claims have been carefully critiqued.  For laboratory
    studies, have results been replicated?
    + Publication processes can work well where the nature of the 
    work requires input and critique widely from across different 
    disciplinary perspectives, and where data and code are made
    available for checking.



