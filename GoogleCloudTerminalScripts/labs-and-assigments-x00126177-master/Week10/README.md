# Week 10 Explained in full detail
This lab was used to automate the verificiation of a web servers status. <br>
This was done by checking parameters on a website to see if the parameters were on the page or not

## 1. #!/bin/bash
This line of code is letting the machine know the file is a script and to run it as a script.

## 2. ipBank=35.188.198.51
This is our first variable that is being assigned
A variable can be an interger, string, boolean, char or decimal we can refer to that can be changed or stay the same depending on the script
In this circumstance we wanted to store the IP address of the website (IP address is basically the unique machine name for the website (e.g. one of Googles IP adresses is http://64.233.160.0/))

## 3. while true;
do
done
This allows our script to keep running over and over again
Most programming languages when ran with a compiler, is done by each line of the file being done one at a time, so this means that the scripts line 1 would be read, then line 2, line 3 etc.
The while true statement is letting the machine know that it has a value of 1, so its true constantly, meaning that the whole script will finish at the line 25 and then it will restart again and will run for eternity unless the process is killed

## 4. count=$(wget -O - $ipBank 2>/dev/null | grep "account balance" | wc -l)
count is the name of our variable again which is being assigned by the following statement which is encapsulated between =$(), this is grabbing the value returned from the statement and sending it to count
wget -0 is downloading information off of the web and storing its logfile data with "-0"
$ipBank after this command is allowing wget to search for our IP address which we previously assigned to our variable ipBank. The "$" allows the variable to be called
2>/dev/null is redirecting stderr to file but the /dev/null is discarding the input and is throwing it away, this is to suppress the output so we dont see any of the extra output that comes with it
grep "account balance" is searching for the string "account balance" on the website
| this is called a pipeline which is basically like passing on a baton in a relay race. The baton is passed on in a relay race when the runner has got to their teammate, same applies here as the baton wont be passed on until the previous statement has completed
wc -l is word count that counts the number of words, the -l part is counting through the lines on the page
So the number 1 is being assigned to the integer count if the statement ran and was tru, meaning the website was live

## 5. if [$count -ne 1]
Here the variable we previously got is being compared to the number 1
If count is not equal to the number 1, it will not allow the script to go into this part of the script
if it is equal to 1, "then" is used to let the next line of code be done

## 6. echo "Error: Page is not responding "
sleep 2
This is outputting to the user that the page is not responding because count was not equal to 1
sleep 2 is letting the program stop for 2 seconds so the next line of code is not ran

## 7. else
echo "Page is responding"
sleep 1
fi
else is the opposite to the if statement, so if count is equal to 1 this is where the script jumps to instead of the "then" statement
its outputting that the page is reposnding so the user knows
it is then being put to sleep for 1 second
fi is signifying the end of the if statement so that the compiler jumps out of the statement

## 8. sleep 4
done
Here the program is gonna stop for 4 seconds before beginning it all again

done signifies the end of the while loop so when it goes past the done, its jumping straight to the start again

(The files output could not be shown because the website was not live)
