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

### xcftools

### imagemagick

### GIMP
Stands for __G__NU __I__mage __M__anipulation __P__rogram.
This tool is used to generate the cover image.

I'm not _certain_ that you'll need GIMP for the current
instructions how to prepare the EPUB - but I'm not
deleting it from the list of required tools until I am
_certain_ that __xcftools_ will work without GIMP installed.

### Sigil
This ebook publishing program.

## Steps --

### Prepare generated files.
Most files that you will need
come as-is in this repository.
There are a few exceptions to this.
To prepare those XHTML files that
do not come ready as-is in the repository,
use the __sh__ utility to run the
script _prepare.sh_ - which is in the
repository's main directory.

### Create the EPUB Project
Use Sigil to create an EPUB file.

### Load the cover image
Very simple -- just import the _CoverImage.jpg_ file into
the EPUB project.

### Load the stylesheets
In the _Styles_ directory of this repository, there are
a number of files ending in the _.css_ extention.
Import them into the EPUB project.
The order is not important.

### The Metadata
In the file _content.opf_ replace the __metadata__
section with the contents of the file _metadata.xml_.

### Import the XHTML files
Unlike with the other files that you import, it is
very important that the XHTML files be imported in
the correct order -- and (even more importantly)
are placed in that order in the _Files_ section
of the project.
Here we will discuss the files to add in the
order that they need to be in the project.

All of the XHTML files that you need to add
will be in the _Text_ directory of this repository.

#### The cover page
This one you add in a different manner.
Instead of using the menu to import the file,
you instead transform the one pre-existing XHTML
file into this file with two sub-steps:

1. You re-name the pre-existing XHTML file to be
named _CoverPage.xhtml_
2. You replace that file's contents with the
contents of the _CoverPage.xhtml_ file in
the _Text_ directory of this repository.

Why do you import this page in such an unusual manner?
Because in this case, you are dealing with the page
that your project needs to recognize as the
front cover of your document.

However - all future pages that you import will
be imprted through the import menu -- that is,
the '+' icon on your toolbar.
