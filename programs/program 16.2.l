/*16.2: Design a DFA in LEX Code over Σ = {a, b} which contains set of all possible strings where every 
string ends with 00 or 11.*/
%{
#include <stdio.h>
%}

%states A B C D DEAD

%%

<INITIAL>[0]    { BEGIN A; }
<INITIAL>[1]    { BEGIN B; }
<INITIAL>\n     { BEGIN INITIAL; printf("Rejected\n"); }
<INITIAL>[^\n01] { BEGIN DEAD; }

<A>[0]          { BEGIN C; }
<A>[1]          { BEGIN B; }
<A>\n           { BEGIN INITIAL; printf("Rejected\n"); }
<A>[^\n01]      { BEGIN DEAD; }

<B>[0]          { BEGIN A; }
<B>[1]          { BEGIN D; }
<B>\n           { BEGIN INITIAL; printf("Rejected\n"); }
<B>[^\n01]      { BEGIN DEAD; }

<C>[0]          { BEGIN C; }
<C>[1]          { BEGIN B; }
<C>\n           { BEGIN INITIAL; printf("Accepted\n"); }
<C>[^\n01]      { BEGIN DEAD; }

<D>[0]          { BEGIN A; }
<D>[1]          { BEGIN D; }
<D>\n           { BEGIN INITIAL; printf("Accepted\n"); }
<D>[^\n01]      { BEGIN DEAD; }

<DEAD>[0]       { BEGIN DEAD; }
<DEAD>[1]       { BEGIN DEAD; }
<DEAD>\n        { BEGIN DEAD; printf("Rejected\n"); }
<DEAD>[^\n01]   { BEGIN DEAD; }

%%

int yywrap(){
    return 1;
}

int main() {
    yylex();
    return 0;
}
%{
#include <stdio.h>
%}

%states A B C D DEAD

%%

<INITIAL>[0]    { BEGIN A; }
<INITIAL>[1]    { BEGIN B; }
<INITIAL>\n     { BEGIN INITIAL; printf("Rejected\n"); }
<INITIAL>[^\n01] { BEGIN DEAD; }

<A>[0]          { BEGIN C; }
<A>[1]          { BEGIN B; }
<A>\n           { BEGIN INITIAL; printf("Rejected\n"); }
<A>[^\n01]      { BEGIN DEAD; }

<B>[0]          { BEGIN A; }
<B>[1]          { BEGIN D; }
<B>\n           { BEGIN INITIAL; printf("Rejected\n"); }
<B>[^\n01]      { BEGIN DEAD; }

<C>[0]          { BEGIN C; }
<C>[1]          { BEGIN B; }
<C>\n           { BEGIN INITIAL; printf("Accepted\n"); }
<C>[^\n01]      { BEGIN DEAD; }

<D>[0]          { BEGIN A; }
<D>[1]          { BEGIN D; }
<D>\n           { BEGIN INITIAL; printf("Accepted\n"); }
<D>[^\n01]      { BEGIN DEAD; }

<DEAD>[0]       { BEGIN DEAD; }
<DEAD>[1]       { BEGIN DEAD; }
<DEAD>\n        { BEGIN INITIAL; printf("Rejected\n"); }
<DEAD>[^\n01]   { BEGIN DEAD; }

%%

int yywrap(){
    return 1;
}

int main() {
    printf("Name: Priyanshu Bisht\nRoll No. 56\nSection: H2\n\n");
    printf("Enter the char [1|0] only\n");
    yylex();
    return 0;
}
