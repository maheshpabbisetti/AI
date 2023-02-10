sum(N,R) :- sum(N,0,R).

 sum(0,R,R).       % when the count gets decremented to zero, we're done. Unify the accumulator with the result.
 sum(N,T,R) :-     % otherwise,
   N > 0 ,         % - assuming the count is greater than zero
   T1 is T+N ,     % - increment the accumulator
   N1 is N-1 ,     % - decrement the count
   sum(N1,T1,R)    % - recurse down
   .          
