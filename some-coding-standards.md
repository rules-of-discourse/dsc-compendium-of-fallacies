# Some Coding Standards

This document is labeled "Some Coding Standards" because
there is no guarantee that the coding standards in this
document are full and comprehensive. It is merely an
"as well\-defined as possible" guide that is subject to
improvement over time.

## Source\-Code Standards

Any contribution that causes the ebook or the web\-site
to fail to build or render correctly _will_ be rejected.
The administration of this project may choose to repair
a contribution that fails this criterion rather than
reject it outright \- but is not obligated to do so
and (unless specifically stated otherwise) makes
no promise to do so.

You can expect that the resultant EPUB file from
your contribution will be put through an EPUB validator
as part of this decision process \-
and quite possible, all three _versions_ of the
EPUB output might be subjected to this test
(the production-ready version, the development-oriented
version, and the unabridged version).

Contributions that restrict themselves to editing
the in-category entries (and as few of them as possible)
are more likely to be accepted than contributions that
wander outside this scope. Best, if possible, to edit
and/or create only one entry per contribution - and
if necessary to do more than one, _then_ as few as
possible.

### XHTML File Naming Convention

The XHTML files that are pages in this document's
output ebook are all found inside the "Text" directory.
The filename of the main-page of a caegory is to begin
with the string "__gnr\-\-__" followed by the three-letter
code of the category, followed by the extension string "__.xhtml__".

The name of an in-category entry is to begin with the three-letter
code of the category - followed by a hyphen ("__\-__") followed
by a specific notation of the name of whatever the entry is about
(the same as the in\-XHTML title of the entry) followed
by the extension string "__.xhtml__".

The notation of a page's title that will be incorporated into
the filename is as follows: Take the full title, make all
the letters lowercase, replace all whitespaces with underscores
leave all hyphens as-is,
and remove all other punctuations (such as and apostraphes).
If anything about this description is unclear, feel free to
look at the example of the entries that already exist.

### Format of the XHMTL files.

Treat the existing entries as examples of how these XHTML
files are to be formatted.
To make your job easier, in many cases there may be
pre-existing templates that you can copy.

## Linguistic Standards

Obviously, the language of this authoritative edition of the
compendium is English. Both of the licenses under which the
XHTML files are licensed under provide means by which you
can legally make and release translations \- but contributions
to the main document must be in English.

### Gendered Language

Only use gender-specific pronouns in cases where you are
referring to someone who can only be of the gender who's
pronouns you are using.

Avoid using singular "they", especially in situations where
doing such can be confusing and/or awkward \- but try
concertedly to altogether reserve "they" for the plural.
While there exists precedent in the English language
for using singluar "they" \- that tradition for most
of it's history tended to reserve singular "they" to
situations in which the context differentiated it very
clearly from the actual plural usage of the term.
It was a tradition that well-suited people who were
comfortable restricting gender-neutral pronouns to
situations in which they could use "they" without causing
such confusion \- because in those days, people didn't
hesitate to make gender\-assumption (usually the assumption
of maleness) in situations where use of singular "they"
could realistically be confused with the plural.

When referring to a singular\-yet\-indefinite person who could
be of any gender \- use the zie\-based pronouns as defined
in the following table:

Male pronoun | Female pronoun | Gender\-ambiguous pronoun
--- | --- | ---
he | she | zie
him | her | zim
his | her | zir
his | hers | zirs
himself | herself | zimself

## Excluded Entries

Some entries are included in the project files,
yet excluded from various editions of the
rendered project for various reasons.
For each kind of excluded entry, there is a string
(which for neatness sake fits the criteria of
a comment in XHTML) who'se presence in the file
marks it for such exclusion.

In the ebook rendering of such an edition, the
excluded entry will be omitted altogether.
In a web rendering of such an edition,
the excluded entry will still be present
as an XHTML file, yet it will be excluded
from the respective category's table of contents.

### Defunct Entries

When an entry that used to be in
the compendium is deemed no longer
worthy to preserve, it should not be
deleted altogether.
Instead, the page should be rewritten
as a placeholder page which does
little more than link to the more current
pages that rendered that old page no longer
needed.
This policy is in place so that if an
external site links to that entry in a
web-renering of the compendium, that link
will not become a broken link.

However, so that the page will not clutter
the table-of-contents, and so that it will
not be included in ebook renditions, it should
be marked by including in it's XHTML source
the following string:

    <!-- defunct -->

This will effectively flag the entry
so that the entry must be
excluded from all but the most unabridged editions.

### Incomplete Entries

There may be some entries that are not yet
to a level of completion that will justify
their inclusion in production-ready
editions of the compendium, but still
need to be present in the project even
in their incomplete state so that they
can _eventually_ be completed.

Such entries will be marked by including in
their XHTML source the following string:

    <!-- inprep -->

This will effectively flag the entry so that
it will be excluded from production-ready editions
of the compendium, but which (unlike the defunct pages)
will be included in development-oriented editions of
the compendium.

There will be a section of this coding standards
document that will detail _some_ of the situations
in which an entry ought to be labeled in this manner.

## Incompelete Entries

Earlier in this document it was described how to
flag incomplete entries so that they will not appear
in production-ready editions of the Compendium.

This section, however, is to explain _some_ of the _situations_
in which this is the appropriate thing to do.

### Fallacy entries without the razors worked out

This criterion applies only to entries that describe fallacies.
Malconducts, while it is still preferred that they have reazors,
are exempt from them being a prerequisite for the flag of
incompletion being lifted.

The reason for this is that unlike with malconducts,
there are plenty of compendiums already out there that
cover fallacies.
As far as fallacies are concerned, therefore, the
importance of having razors is what sets this compendium
apart from others.
Therefore, entries on fallacies should not be included
in the production-ready editions of the compendium
unless the razors are worked out.

Malconducts, on the other hand, can be included in
the production-ready editions even if their razors are
not worked out yet - because malconducts (unlike fallacies)
are things that most pre-existing compendiums have
tended to neglect.

### Entries that are just not ready to be worth including

If an entry is so imcomplete that it's presence doesn't
add value to the compendium, but still should be in the
project files in hopes of eventual completion,
then it obviously should be included in development-oriented
editions of the compendium, but not in production-ready
editions.

However - rarely will you have enough knowledge to
put together any entry worth contributing at all that is too
incomplete on this count without it _also_ being too
incomplete on one of the more _specific_ counts.


