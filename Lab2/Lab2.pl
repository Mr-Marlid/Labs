dish_number(pizza,2).
dish_number(hamburger,2).
dish_number(cake,3).
dish_number(chiken_soup,1).
dish_number(pelmeni,2).
dish_number(ramen,1).
dish_number(sushi,2).
dish_number(icecream,3).
dish_number(pudding,3).
dish_number(wok,2).
dish_number(kebab,2).
dish_number(greek_salad,2).
dish_number(vareniki,2).
dish_number(plov,2).
dish_number(pasta_carbonara,2).
dish_number(borzh,1).
dish_number(peking_duck,2).
dish_number(lasagna,2).
dish_number(wiener_schnitzel,2).
dish_number(khachapuri,2).

dish_temp(pizza,1).
dish_temp(hamburger,1).
dish_temp(cake,3).
dish_temp(chiken_soup,1).
dish_temp(pelmeni,1).
dish_temp(ramen,1).
dish_temp(sushi,3).
dish_temp(pudding,3).
dish_temp(wok,1).
dish_temp(icecream,3).
dish_temp(kebab,1).
dish_temp(greek_salad,2).
dish_temp(vareniki,1).
dish_temp(plov,1).
dish_temp(pasta_carbonara,1).
dish_temp(borzh,1).
dish_temp(peking_duck,1).
dish_temp(lasagna,1).
dish_temp(wiener_schnitzel,1).
dish_temp(khachapuri,1).

dish_cream(pizza,2).
dish_cream(hamburger,3).
dish_cream(cake,1).
dish_cream(chiken_soup,3).
dish_cream(pelmeni,3).
dish_cream(ramen,3).
dish_cream(sushi,3).
dish_cream(pudding,3).
dish_cream(wok,2).
dish_cream(icecream,1).
dish_cream(kebab,3).
dish_cream(greek_salad,3).
dish_cream(vareniki,3).
dish_cream(plov,3).
dish_cream(pasta_carbonara,1).
dish_cream(borzh,3).
dish_cream(peking_duck,3).
dish_cream(lasagna,3).
dish_cream(wiener_schnitzel,3).
dish_cream(khachapuri,3).

dish_country(pizza,1).
dish_country(hamburger,2).
dish_country(cake,0).
dish_country(chiken_soup,0).
dish_country(pelmeni,3).
dish_country(ramen,4).
dish_country(sushi,4).
dish_country(pudding,2).
dish_country(wok,5).
dish_country(icecream,0).
dish_country(kebab,6).
dish_country(greek_salad,7).
dish_country(vareniki,8).
dish_country(plov,9).
dish_country(pasta_carbonara,1).
dish_country(borzh,8).
dish_country(peking_duck,5).
dish_country(wiener_schnitzel,10).
dish_country(khachapuri,11).
dish_country(lasagna,1).

dish_dough(pizza,1).
dish_dough(hamburger,1).
dish_dough(cake,1).
dish_dough(chiken_soup,1).
dish_dough(pelmeni,1).
dish_dough(ramen,1).
dish_dough(sushi,0).
dish_dough(pudding,0).
dish_dough(wok,1).
dish_dough(icecream,0).
dish_dough(kebab,0).
dish_dough(greek_salad,0).
dish_dough(vareniki,1).
dish_dough(plov,0).
dish_dough(pasta_carbonara,1).
dish_dough(borzh,0).
dish_dough(peking_duck,0).
dish_dough(wiener_schnitzel,0).
dish_dough(khachapuri,1).
dish_dough(lasagna,1).

question1(X1):-write("when your dish is served?"),nl,
write("1-first"),nl,
write("2-second"),nl,
write("3-dessert"),nl,
read(X1).

question4(X4):-write("which country is this dish?"),nl,
write("0-general"),nl,
write("1-italy"),nl,
write("2-usa"),nl,
write("3-russia"),nl,
write("4-japan"),nl,
write("5-china"),nl,
write("6-turkey"),nl,
write("7-greece"),nl,
write("8-ukraine"),nl,
write("9-uzbekistan"),nl,
write("10-austria"),nl,
write("11-georgia"),nl,
read(X4).

question3(X3):-write("is there cream in your dish?"),nl,
write("1-yes"),nl,
write("2-not_always"),nl,
write("3-no"),nl,
read(X3).


question5(X5):-write("this dish contains dough?"),nl,
write("1-yes"),nl,
write("0-no"),nl,
read(X5).


question2(X2):-write("what is the temperature of this dish?"),nl,
write("1-hot"),nl,
write("2-medium"),nl,
write("3-cold"),nl,
read(X2).



pr:- question1(X1),
question2(X2),
question3(X3),
question4(X4),
question5(X5),

dish_number(X,X1),
dish_country(X,X2),
dish_cream(X,X3),
dish_dough(X,X4),
dish_temp(X,X5),
write(X),nl,fail.








