Songbooks
==============

`differentclass` - Pulp's "Different Class" Songbook

`ziggy` - David Bowie's "The Rise and Fall of Ziggy Stardust and the Spiders from Mars" Songbook

Both songbooks share the same `preamble.tex`.


##Typeset

`xelatex songbook-name_of_album_folder.tex`

Century SchoolBook and Gill Sans fonts are used.

##Adding Chords Diagrams

See how chords are defined in `chords.tex`

##Adding Songs

"Mis-Shapes" is an example of usage. For example, you can copy/paste `misshapes.tex`, rename it and `\include` it in `songbook-name_of_album_folder.tex`. Then fill the file with appropriate content and `\chordset`s. Add new chords to `chords.tex` if needed.
