function toggle(el, on)
{
    if(el.style != null)
        if(on == 1)
        {
            el.style.display = "block";
            console.log("Show " + el + ".");
        }
        else
        {
            el.style.display = "none";
            console.log("Hide " + el + ".");
        }
    return;
}

function formButtonBackgrounds(el, on)
{
    if(el.style != null)
        if(on == 1)
        {
            el.style.backgroundColor = "#3e3";
            console.log("Color " + el + ".");
        }
        else
        {
            el.style.backgroundColor = "inherit";
            console.log("Decolor " + el + ".");
        }
    return;
}