function onload(){
       //alert("Function onLoad() called");
    document.getElementById("timestamp").innerHTML = Date();

    }
    function checkNumber(){
        var theNumber, theMessage;

        theNumber = $('#smallnumber').val();

        if (isNaN(theNumber)||theNumber < 1|| theNumber>10){
            theMessage = "number was expected to be between 1 and 10"
        }
        else{
            theMessage = "Number is Good";
        }
        $('#numberMessage').text(theMessage);
    }