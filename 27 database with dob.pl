% Define the facts for the database
person(john, date(1990, 01, 01)).
person(jane, date(1995, 06, 15)).
person(jim, date(1992, 12, 22)).

% Define the rule to query the database
% The rule takes a person's name as input and returns their date of birth
dob(Person, DOB) :- person(Person, DOB).
?- dob(john, DOB).
DOB = date(1990, 01, 01).
