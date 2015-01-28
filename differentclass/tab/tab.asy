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

defaultpen(fontsize(10pt));

void fretunit(picture pic=currentpicture, pair position=(0,0)) {
	path unitline = (0,0)--(1,0);
	for (int i = 0; i < 6; ++i)
	{
		draw(pic,shift(position + i*stringsMargin * N)*scale(size,0)* unitline);
	}
}
void fretboard(picture pic=currentpicture, int unitsNum=1) {
	draw(pic,(0,0)--(0,5*stringsMargin), linewidth(3pt));
	for (int i = 0; i < unitsNum; ++i)
	{
		fretunit(pic, (0,0) + i * size *E);
	}
	path clippath = scale(unitsNum *size,5*stringsMargin) * unitsquare;
	clip(pic,clippath);
	draw(pic, clippath);

	label(pic,rotate(90) * "\scriptsize TAB", (0,5*stringsMargin/2), W);
}

void note(picture pic=currentpicture,string label, real pos, int str) {
	label(pic,"\scriptsize "+label, (pos * size, (6-str)*stringsMargin), black, Fill(white));
}


picture pencilskirt1;

fretboard(pencilskirt1);

note(pencilskirt1,"0", 3 * 1/8, 3);
note(pencilskirt1,"2", 4 * 1/8, 3);
note(pencilskirt1,"2", 5 * 1/8, 4);
note(pencilskirt1,"0", 6 * 1/8, 4);
note(pencilskirt1,"3", 7 * 1/8, 5);


shipout("pencilskirt1",pencilskirt1);



picture pencilskirt2;

fretboard(pencilskirt2);

note(pencilskirt2,"2h0", 3 * 1/8, 3);
note(pencilskirt2,"0", 5 * 1/8 , 4);
note(pencilskirt2,"2h", 6 * 1/8, 4);
note(pencilskirt2,"0", 6 * 1/8+ 1/16, 4);


shipout("pencilskirt2",pencilskirt2);
