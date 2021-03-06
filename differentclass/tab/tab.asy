settings.render=0;
settings.outformat="pdf";
settings.tex="xelatex";

real size = 152.30974pt;
real stringsMargin = 5.5pt;

texpreamble("\usepackage{fontspec,xltxtra,xunicode}
	\usepackage{xcolor}
	\usepackage{amsmath}
	\defaultfontfeatures{Mapping=tex-text}
	\setromanfont[Mapping=tex-text]{Century Schoolbook}
	\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Gill Sans}
	%\setmonofont[Scale=MatchLowercase]{Monaco}
	\usepackage[10pt]{moresize}");


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
	draw(pic, shift(0, -0.2/2 * 5*stringsMargin) * scale(1,1.2)* clippath, invisible);

	label(pic,rotate(90) * "\scriptsize TAB", (0,5*stringsMargin/2), W);
}

void note(picture pic=currentpicture,string label, real pos, real str) {
	label(pic,"\scriptsize "+label, (pos * size, (6-str)*stringsMargin), black, Fill(white));
}

void hummeron(picture pic=currentpicture, string hammer, string on, real pos, real width, real str, string sign) {
	note(pic,"$\mathbf{\overset{\frown}{}}$", pos + width/2, str - 0.9);
	//note(pic,"\tiny "+sign, pos + width/2, str - 1.6);
	note(pic,hammer, pos, str);
	note(pic,on, pos + width, str);
}
defaultpen(fontsize(10pt));
