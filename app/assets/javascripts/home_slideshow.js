
var featured = new Array(3);

for(var i = 0; i < featured.length; i++)
{
	featured[i] = new Image();
	featured[i].src = "featured_product_" + (i+1) + ".jpg";
	featured[i].alt = "Featured Product " + (i+1);
}

function slide(step)
{
	document.getElementById('featuredImage').src = featured[step].src;
	document.getElementById('featuredImage').alt = featured[step].alt;
	
	 if (step < featured.length)
		 step++;
	 else
		 step=0;
		 setTimeout("slide(" + step + ")", 2500);
}