% ILKNUR ICKE - Dept. of Computer Science
% FALL 2012 MATH 330
% BIRDSONG GENERATOR
% Based on Laje and Mindlin(2002), Diversity Within a Birdsong, Physical
% Review Letters

clear all;
Fs = 22050;  %sampling


%syllable a
disp('Generating Syllable a (rho2=-11)');
[m1 s1]=singSyllable(0.3,-11.0);
disp('Syllable a generated');

%play the syllable
sound(s1(:,1),Fs);   

%syllable b
disp('Generating Syllable b (rho2=-11.8)');
[m2 s2]=singSyllable(0.3,-11.8);
disp('Syllable c generated');
%play the syllable
sound(s2(:,1),Fs);   

%syllable c
disp('Generating Syllable b (rho2=-7.1)');
[m3 s3] = singSyllable(0.3,-7.1);
disp('Syllable c generated');
%play the syllable
sound(s3(:,1),Fs);   


%stich the song up
disp('Stiching the song up a-b-c-c');
song = [ s1(:,1) ;s2(:,1) ;s3(:,1); s3(:,1)];
 
disp('Saving wav file');
wavwrite(song,Fs,'ilknur_song.wav');

disp('Playing wav file');
sound(song,Fs);


  
