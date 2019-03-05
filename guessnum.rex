/*Guess The Number Game REXX*/
cls
say " " /*Just adding some spaces*/
say " "
say " "
say " "
say "Welcome to the number guessing game!"
say "Enter '0' to quit."
say " "
say "What two numbers in a range do you want the computer to choose from?"
retryx:
say "Enter the low number (e.g. 1):"
pull numx  /*Enter low range number*/
checknumx = datatype(numx) /*check to make sure 1st number is integer*/
if numx = 0 then call endprogram /*Exit program on a 0*/
if checknumx = "CHAR" then call retryx /*redo if number is not an integer*/
retryy:
say "Enter the high number (e.g. 100):"
pull numy  /*High range number*/
checknumy = datatype(numy) /*check to make sure 2nd number is integer*/
if numy = 0 then call endprogram /*Exit program on a 0*/
if checknumy = "CHAR" then call retryy /*redo if number is not an integer*/
if numy < numx then call retryy /*Make sure 2nd integer higher than first*/
compnum = random(numx,numy) /*Generate a random number between numx and numy*/
say " "
say " "
say "Great! The computer has picked a number between" numx "and" numy"."
say " "
guessamount = 0 /*set inital number of guesses to 0 for loop*/
do while numberguess <> compnum
guessamount = guessamount + 1 /*determine number of guesses*/
say "What number do you guess?"
pull numberguess /*enter number guess*/
if numberguess = 0 then call endprogram /*Exit program on a 0*/
if numberguess > compnum then /*determine if guess is too high*/
do
say "Your guess is too high."
end
if numberguess < compnum then /*determine if guess is too low*/
say "Your guess is too low."
end
if guessamount = 1 then /*special case for guessing number on first try*/
do
say "Wow! You got it on the first try."
end
else
do
say "You got it in" guessamount "guesses."
end
endprogram:
exit
