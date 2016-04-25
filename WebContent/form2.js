/**
 * 
 */
function validate(contact){
    var name = form.name.value;
    var email = form.email.value;
    var message = form.message.value;

    if (name.length == 0 || name.length > 200)
    {alert ("You must enter a name.");
    return false;
    }

    if (email.length == 0 || email.length > 200)
    {alert ("You must enter a email.");
    return false;
    }

    if (message.length == 0)
    {alert ("You must enter a message.");
    return false;
    }
 console.log(name);
    return true;
}