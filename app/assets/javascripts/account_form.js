function toggle(el, on)
{
    if(el.style != null)
        if(on == 1)
        {
            el.style.display = "inline";
            console.log("Show " + el + ".");
        }
        else
        {
            el.style.display = "none";
            console.log("Hide " + el + ".");
        }
    return;
}