console.log("Hello World");

document.write("Hai Dilip");

var input = prompt("Enter Something :");

if(input==="") //To check for empty string that happens when user enters nothing
 alert("You entered nothing");
else if(input!=null) //To check if user entered something
 alert("You have entered " + input);
else //If users clicks cancel
 alert("You entered nothing");