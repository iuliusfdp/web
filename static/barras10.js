$(window).load(function(){
	var	espacioB = 15,
	 	anchoB = 15,
	    	alturaC = 250,
		nEtiquetasY = 8,
		offsetX = 20,
		anchoG =750,
		alturaG=250;
	
	var maxVal,
		valoresG = [],
	    	etiquetasX = [],
		etiquetasY = [];
	
	var cv, ctx;
	
	function obtenerValores()   
	{   
		// Valores   
		$("#data10 tr td:nth-child(2)").each(function(){   
			valoresG.push($(this).text());   
		});   
		
		//Etiquetas   
		$("#data10 tr td:nth-child(1)").each(function(){   
			etiquetasX.push($(this).text());   
		});  

	}
	
	function initCanvas ()   
	{   
		   
		cv = $("#canvas10").get(0);   
		if (!cv)   
		{ return; }   
		   
		ctx = cv.getContext('2d');   
		if (!ctx)   
		{ return; }   
	}
	
	function valorMaximo (arr)   
	{   
		maxVal=0;   
		
		for(i=0; i<arr.length; i++)   
		{   
		if (maxVal<parseInt(arr[i]))   
		{   
		maxVal=parseInt(arr[i]);   
		}   
		}   
		
		maxVal*= 1.1;   
	} 
	
	function escalar(param)   
	{   
		return  Math.round((param/maxVal)*alturaG);   
	}
	
	function x (param)   
	{   
		return (param*anchoB)+((param+1)*espacioB)+offsetX;   
	}
	
	function y (param)   
	{   
		return alturaG - escalar(param);   
	} 
	
	function ancho()   
	{   
		return anchoB;   
	}
	
	function altura(param)   
	{   
		return escalar(param);   
	}
	
	function dibujarEtiquetasX()   
	{   
		ctx.save();   
		ctx.font = "10px 'arial'";   
		ctx.fillStyle = "#000";   
		for(index=0; index<valoresG.length; index++)   
		{   
			ctx.fillText(etiquetasX[index], x(index), alturaG+17);   
		}   
		ctx.restore();   
	} 
	
	function dibujarEtiquetasY()   
	{   
		ctx.save();   
		for(index=0; index<nEtiquetasY; index++)   
		{   
			etiquetasY.push(Math.round(maxVal/nEtiquetasY*(index+1)));   
			ctx.fillStyle = "#000";   
			ctx.fillText(etiquetasY[index], offsetX-20, y(etiquetasY[index]));   
		}   
		ctx.fillText("0", offsetX, alturaG+7);   
		ctx.restore();   
	}
	
	function dibujarGraficoBarras()   
	{  
		for(index=0; index<valoresG.length; index++)   
		{   
			ctx.save();   
			ctx.fillStyle = "#B7B7B7";   
			ctx.fillRect( x(index), y(valoresG[index]), ancho(), altura(valoresG[index]));   
			ctx.restore();   
		}   
		$("#data10").hide();
	} 
	
	obtenerValores();
	initCanvas();
	valorMaximo(valoresG);
	dibujarEtiquetasX();
	dibujarEtiquetasY();
	dibujarGraficoBarras();
})
