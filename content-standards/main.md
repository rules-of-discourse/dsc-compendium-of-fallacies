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

See [separate document](linguistic-standards.md).

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

There is a [separate document](incomplete-entries.md), however,
to explain _some_ of the _situations_
in which this is the appropriate thing to do.



