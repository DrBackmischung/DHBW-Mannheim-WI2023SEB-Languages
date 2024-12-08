% Facts: Gender
male(john).
male(michael).
male(david).
male(mathis).
male(joe).
male(tommy). 
male(thomas).
female(lisa).
female(susan).
female(mary).
female(jane).
female(suzy).
female(kitty).

% Facts: Parent relationships
parent(john, michael).  % John is a parent of Michael
parent(lisa, michael).  % Lisa is a parent of Michael
parent(john, susan).    % John is a parent of Susan
parent(lisa, susan).    % Lisa is a parent of Susan
parent(michael, david). % Michael is a parent of David
parent(mary, david).    % Mary is a parent of David
parent(kitty, joe).     % Kitty is a parent of Joe
parent(joe, suzy).      % Joe is a parent of Suzy

% Facts: Pets
pet(tommy, mathis).  % Tommy is Mathis' pet

% Rules: Defining grandparents
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X).

% Rules: Defining siblings, uncles, aunts, cousins
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
uncle(X, Y) :- sibling(X, Z), parent(Z, Y), male(X).
aunt(X, Y) :- sibling(X, Z), parent(Z, Y), female(X).
cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).

% Rules: Relationships involving pets
owns_pet(Person, Pet) :- pet(Pet, Person).
is_pet(Pet) :- pet(Pet, _).

% Rules: Extended family
half_sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y, not(sibling(X, Y)).
in_law(X, Y) :- (parent(Z, X), parent(Z, W), sibling(W, Y)) ; (sibling(X, Z), parent(Z, Y)).
