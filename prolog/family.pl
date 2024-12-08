% Facts: Gender
male(john).
male(michael).
male(david).
female(lisa).
female(susan).
female(mary).

% Facts: Parent relationships
parent(john, michael).  % John is a parent of Michael
parent(lisa, michael).  % Lisa is a parent of Michael
parent(john, susan).    % John is a parent of Susan
parent(lisa, susan).    % Lisa is a parent of Susan
parent(michael, david). % Michael is a parent of David
parent(mary, david).    % Mary is a parent of David

% Rules: Defining grandparents
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X).

% Sample queries:
% ?- grandfather(john, david).
% ?- grandmother(lisa, david).
% ?- grandparent(X, david).
% ?- grandparent(X, susan).
