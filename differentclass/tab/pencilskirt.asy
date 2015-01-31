import "../../tab.asy" as tab;

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

hummeron(pencilskirt2, '0', '2', 3 * 1/8, 3/2 * 1/32, 3, 'h');
hummeron(pencilskirt2, '\quad', '0', 3 * 1/8 + 3/2 * 1/32, 3/2 * 1/32, 3, 'p');
//note(pencilskirt2,"0", 4 * 1/8 + 1/16, 3);

note(pencilskirt2,"0", 5 * 1/8 , 4);
hummeron(pencilskirt2, '0', '2', 6 * 1/8, 3/2 * 1/32, 4, 'h');
note(pencilskirt2,"0", 7 * 1/8 , 4);




shipout("pencilskirt2",pencilskirt2);