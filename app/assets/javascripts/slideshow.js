function featured_slideshow(i)
{
    while(document.title.indexOf("H") == 0)
    {
        setTimeout(function(){
            document.getElementById('slideshowImage').setAttribute('src', 'featured_product_' + i + '.jpg');
            
            i++;
            
            setTimeout(function(){featured_slideshow(i)}, 2000);
        }, 2000);
    }
}