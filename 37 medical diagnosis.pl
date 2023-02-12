symptom('Flu').
symptom('Vomitting').
symptom('Fever').
symptom('Stomach Pain').

treatment('Flu', 'Drink hot water, avoid cold eatables.').
treatment('Vomitting', 'Drink water.').
treatment('Fever', 'Put hot water cloth on head.').
treatment('Stomach Pain', 'Avoid outside food and eat fruits.').

input :- dynamic(patient/2),
    repeat,
    symptom(X),
    write('Does the patient have '),
    write(X),
    write('? '),
    read(Y),
    assert(patient(X,Y)),
    \+ not(X='Stomach Pain'),
    not(output).

disease(hemochromatosis) :-
    patient('Stomach Pain',yes).

disease(hepatitis_b) :-
    not(disease(hemochromatosis)),
    patient('Fever',yes),
    patient('Vomitting',yes).

disease(hepatitis_a) :-
    not(disease(hemochromatosis)),
    not(disease(hepatitis_b)),
    patient('Flu',yes).

disease(flu) :-
    not(disease(hemochromatosis)),
    not(disease(hepatitis_b)),
    not(disease(hepatitis_a)),
    patient('Flu',yes).

output:-
    nl,
    possible_diseases,
    nl,
    advice.

possible_diseases :- disease(X), write('The patient may suffer from '), write(X),nl.
advice :- symptom(X), patient(X,yes), treatment(X,Y), write(Y),nl, \+ not(X='Stomach Pain').

