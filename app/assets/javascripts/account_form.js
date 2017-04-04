function toggle_acc(el)
{    
    if(el == "login_form")
    {
        document.getElementById("acc_h1").innerHTML = "Login Page"
        document.getElementById("signup_form").style.display = "none"
        document.getElementById(el).style.display = "block"
    }
    else if(el == "signup_form")
    {
        document.getElementById("acc_h1").innerHTML = "Signup Page"
        document.getElementById("login_form").style.display = "none"
        document.getElementById(el).style.display = "block"
    }
        
    return;
}
