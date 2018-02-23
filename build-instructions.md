# Instructions for Building an EPUB of the Discursive Compendium of Fallacies
__NOTE:__ This build-instruction document (just like the
compendium that it instructs how to build into EPUB form)
is far from complete.
This notice will be removed when it gets to the point that
following these instructions will result in a working EPUB.

## What about formats other than EPUB?
The MOBI format (which is used for Kindle) can be generated _from_
the EPUB using a conversion tool called __kindlegen__.

## What you will need:
Aside from this project and a working unicoid environment
(such as the Gnu-Linux environment) you will need at _least_
the following tools to build the EPUB from these source files.

### GIMP
Stands for __G__NU __I__mage __M__anipulation __P__rogram.
This tool is used to generate the cover image.

### Sigil
This ebook publishing program.

## Steps --

### Prepare the cover image.
Use GIMP to export the project _CoverImage.xcf_ to
the JPEG file _CoverImage.jpg_.
That is, unless you want to use a different cover
image - in which case you must simply copy it to
_CoverImage.jpg_ (if your source is in JPEG format)
or _convert_ it to the JPEG file _CoverImage.jpg_
using whatever tool is appropriate for doing this
to files of the format that your source image is in.

### Prepare generated XHTML files.
Most XHTML files that you will need
come as-is in this repository.
There are a few exceptions to this.
To prepare those XHTML files that
do not come ready as-is in the repository,
use the __sh__ utility to run the
script _prepare.sh_ - which is in the
repository's main directory.
