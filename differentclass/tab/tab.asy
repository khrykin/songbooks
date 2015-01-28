settings.render=0;
settings.outformat="pdf";
settings.tex="xelatex";

real size = 152.30974pt;
real stringsMargin = 5.5pt;

texpreamble("\usepackage{fontspec,xltxtra,xunicode}
	\usepackage{xcolor}
	
	\defaultfontfeatures{Mapping=tex-text}
	\setromanfont[Mapping=tex-text]{Century Schoolbook}
	\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Gill Sans}
	%\setmonofont[Scale=MatchLowercase]{Monaco}
	\usepackage[10pt]{moresize}");

size(size);
defaultpen(fontsize(10pt));

void fretunit(picture pic=currentpicture) {
	path unitline = (0,0)--(1,0);
	for (int i = 0; i < 6; ++i)
	{
		draw(pic,shift(0,i*stringsMargin)*scale(size,0)* unitline);
	}
	draw(pic,(0,0)--(0,5*stringsMargin));
	draw(pic,(size,0)--(size,5*stringsMargin));
	clip(pic,scale(size,5*stringsMargin) * unitsquare);
	draw(pic,scale(size,5*stringsMargin) * unitsquare);
}
void fret(picture pic=currentpicture) {
	draw(pic,(0,0)--(0,5*stringsMargin), linewidth(3pt));
	fretunit(pic);

	label(pic,rotate(90) * "\scriptsize TAB", (0,5*stringsMargin/2), W);
}

void note(picture pic=currentpicture,string label, real pos, int str) {
	label(pic,"\scriptsize "+label, (pos, (6-str)*stringsMargin), black, Fill(white));
}


picture pencilskirt1;

fret(pencilskirt1);

note(pencilskirt1,"0", 3*size/8, 3);
note(pencilskirt1,"2", 4 * size/8, 3);
note(pencilskirt1,"2", 5 * size/8, 4);
note(pencilskirt1,"0", 6 * size/8, 4);
note(pencilskirt1,"3", 7 * size/8, 5);


shipout("pencilskirt1",pencilskirt1);



picture pencilskirt2;
fret(pencilskirt2);

note(pencilskirt2,"2h0", 3*size/8, 3);
note(pencilskirt2,"0", 5 * size/8 , 4);
note(pencilskirt2,"2h", 6 * size/8, 4);
note(pencilskirt2,"0", 6 * size/8+ size/16, 4);


shipout("pencilskirt2",pencilskirt2);
