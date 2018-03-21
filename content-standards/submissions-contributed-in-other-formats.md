# On Submissions Contributed in Other Formats

Sometimes, someone might offer contributions in formats other
than XHTML.
Unlike actual XHTML documents that would be directly added
through the usual workflow - these documents would require
a volunteer to convert them to XHTML.

## Permissions needed by the original author of the document

The author of the document will need to give _express_ permission
to whoever converts the document and enters it into the project
to use and distribute it in a manner consistent with the XHTML
files of the project.

This means that the volunteer who converts the document will
need _both_ of
the following two permissions:

  * Permission to use and distribute the contribution under the
    terms of the
    [Gnu General Public License version 2.0](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
or later
  * Permission to use and distribute the contribution under the
    terms of the
    [Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) license

## Giving Credit to the Original Author

There is not enough room in the header-line of a Git commit's
description to give full credit to the author of a work who
isn't the same person actually forming the Git entry.
However, such credit needs to be given.

Fortunately, Git allows for commit messages that include more
than just the header line.
Therefore, credit can be given in the body of the Git commit
message - and all that is needed to establish a convention that
is to alert people through the header-line that there is important
credit information in the body of the commit message.

It is asked that the header-line of a commit message that
contains important credit information in the body of the
message begin with the following string:

    NTR:

If there are modifications needed to the contribution _beyond_ the
mere conversion from one format to another, then
easiest approach might be the following steps:

  * First do one commit in which you add to the repository
the _verbatim_ entry converted
to project-standard XHTML from it's provided format.
It is in the commit message of _this_ commit that you
credit the providing author as described above.

  * Once you have done that, make a _separate_ commit
for your _changes_ to the entry.

