//Globals

//USGS HUCs---for every change in region selection populate corresponding 
//subregion,accounting and catalog units.
function doregChange()
{
	var hucs = document.getElementById('id_usgs_hucs');
	var sub_reg = document.getElementById('id_sub_reg');
   var flag = 0;
   	sub_reg.innerHTML = "";
   	
   	var accUnit = document.getElementById('id_acc');
		accUnit.innerHTML = "";
		
	var catUnit = document.getElementById('id_cat');
		catUnit.innerHTML = "";	
		
				
	var res = "";
	for (var i=0; i<hucs.length; i++)
	{
		//FETCH THE SELECTED REGION'S CODE
		if (hucs.options[i].selected)
		   	res +=  hucs.options[i].value+",";
	}
	var temp = new Array();
    temp = res.split(',');
	for(var i=0; i<temp.length; i++)
	{
	if(temp[i] !="")
	 {
			for(var j=0; j<subregion.length; j++)
			{
				var subtemp = new Array();
				subtemp = subregion[j].split('=');
				var sid="";
				if(subtemp[1].length == 3)
					sid = subtemp[1].substr(0,1)
				else
					sid = subtemp[1].substr(0,2)
				 
				if(temp[i] == sid)  
					{				
					     if(flag == 0)
							{
								var y=document.createElement('option');y.text ="Any";y.value="Any";
								try{sub_reg.add(y,null);}
								catch(ex){sub_reg.add(y);}flag=1;
							}		
						var y=document.createElement('option');
						y.text = subtemp[0].toString();
						y.value = subtemp[1].toString();
						try{
							sub_reg.add(y,null);						
							}
						catch(ex)
						{sub_reg.add(y);}	
					}
			}
	 }
	
	
	}
	
	
	
}

//USGS HUCs---for every change in sub region selection populate corresponding 
//accounting and catalog units.
function dosubChange()
{
		var sub = document.getElementById('id_sub_reg');
		var accUnit = document.getElementById('id_acc');
		var flag=0;
		accUnit.innerHTML = "";	 
		
		var catUnit = document.getElementById('id_cat');
		catUnit.innerHTML = "";
		
		
		
		var res = "";
		for (var i=0; i<sub.length; i++)
			{
				if (sub.options[i].selected)
						res +=  sub.options[i].value+",";
			}	
		var temp = new Array();
		temp = res.split(',');
	for(var i=0; i<temp.length; i++)
	{
	if(temp[i] !="")
	{ 
			for(var j=0; j<acc.length; j++)
			{
				var acctemp = new Array();
				acctemp = acc[j].split('=');
				var aid="";
				if(acctemp[1].length == 5)
					aid = acctemp[1].substr(0,3)
				else
					aid = acctemp[1].substr(0,4)
				 
				if(temp[i] == aid)  
					{							
						
						if(flag == 0)
							{
								var y=document.createElement('option');y.text ="Any";y.value="Any";
								try{accUnit.add(y,null);}
								catch(ex){accUnit.add(y);}flag=1;
							}		
						
						
						var y=document.createElement('option');
						y.text = acctemp[0].toString();
						y.value = acctemp[1].toString();
						try{
							accUnit.add(y,null);						
							}
						catch(ex)
						{accUnit.add(y);}	
					}
			}
		}		
			
			
	}		
	
}
//USGS HUCs---for every change in accounting unit selection populate corresponding 
// catalog units.
function doaccChange()
{
	var acc = document.getElementById('id_acc');
	var catUnit = document.getElementById('id_cat');
	var flag = 0;
		catUnit.innerHTML = "";	 
		
		
	var res = "";
	for (var i=0; i<acc.length; i++)
		{
			if (acc.options[i].selected)
				res += acc.options[i].value + ",";
 		}
		
		
	var temp = new Array();
		temp = res.split(',');
	for(var i=0; i<temp.length; i++)
	{
	if(temp[i] !="")
	{ 
			for(var j=0; j<cat.length; j++)
			{
				var cattemp = new Array();
				cattemp = cat[j].split('=');
				var cid="";
				if(cattemp[1].length == 7)
					cid = cattemp[1].substr(0,5)
				else
					cid = cattemp[1].substr(0,6)
				 
				if(temp[i] == cid)  
					{							
						
						if(flag == 0)
							{
								var y=document.createElement('option');y.text ="Any";y.value="Any";
								try{catUnit.add(y,null);}
								catch(ex){catUnit.add(y);}flag=1;
							}		
						
						
						var y=document.createElement('option');
						y.text = cattemp[0].toString();
						y.value = cattemp[1].toString();
						try{
							catUnit.add(y,null);						
							}
						catch(ex)
						{catUnit.add(y);}	
					}
			}
		}		
			
			
	}		
			
	
}



function year_validate()
{
		var startyear = document.getElementById('id_startyear');
		var startmonth = document.getElementById('id_startmonth');
		var startday = document.getElementById('id_startday');

		var endyear = document.getElementById('id_endyear');
		var endmonth = document.getElementById('id_endmonth');
		var endday = document.getElementById('id_endday');

		if (startyear.value != "" || startmonth.value != "" || startday.value != "" || endyear.value != "" || endmonth.value != "" || endday.value != "")
          {
			if (startyear.value == ""  || startyear.value > endyear.value)
			d = new Date();  
			var y  = d.getFullYear();
			alert('Please select a valid year'+ y)
		  }



}
// dispalays appropriate start year based on the end year selected
function startyear_sel()
{
 var styear = document.getElementById('id_startyear');
 var eyear = document.getElementById('id_endyear');
 var stmonth = document.getElementById('id_startmonth');
 var emonth  = document.getElementById('id_endmonth');
 var ySel;
 stmonth.disabled = false;
 emonth.disabled = false;
  
        if(eyear.value != ""){var esave = eyear.value;}
		eyear.innerHTML = "";
		d = new Date();  
		var maxyear  = d.getFullYear();
		for(var eind = styear.value; eind <= maxyear ; eind++)
		{
				var y=document.createElement('option');
				y.text = eind;
				y.value = eind;
				if(eind == esave)
					{
						
						ySel = y;
					}
				try{
					eyear.add(y,null);						
				}
				catch(ex)
					{eyear.add(y);}
		 
		}
		if (ySel != null)
		ySel.selected = true;
		
		
	    

 

}



// dispalays appropriate end year based on the start year selected
function endyear_sel()
{
	var styear = document.getElementById('id_startyear');
	var eyear = document.getElementById('id_endyear');
	var stmonth = document.getElementById('id_startmonth');
	var emonth  = document.getElementById('id_endmonth');
	
	
		stmonth.disabled = false;
		emonth.disabled = false;
		if(styear.value != ""){var stsave = styear.value;}
		
		styear.innerHTML = "";
		d = new Date();  
		var maxyear  = d.getFullYear();
		var ySel;
		for(var eind = 1901; eind <= eyear.value ; eind++)
		{
				var y=document.createElement('option');
				y.text = eind;
				y.value = eind;
				if(eind == stsave)
				{
				   ySel = y;
				}
				try{
					styear.add(y,null);						
				}
				catch(ex)
					{styear.add(y);}
		 
		}
		if (ySel != null)
		ySel.selected = true;
		
		//if(styear.value > eyear.value)
		//{alert('Please select valid start year')}


}

//controls the end moths available for the user to select if 
//the start and end year is one and the same

function startmonth_sel()
{
	var styear = document.getElementById('id_startyear');
	var eyear = document.getElementById('id_endyear');
	var stmonth = document.getElementById('id_startmonth');
	var emonth  = document.getElementById('id_endmonth');
	var stday = document.getElementById('id_startday');
	var eday = document.getElementById('id_endday');
	var ySel;
	
	var mon_array = ["","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];	
	
	stday.disabled = false;
	eday.disabled = false;
	

	 if(styear.value == eyear.value)
	  {
			
			if(emonth.value != ""){var esave = emonth.value;}//var index = stmonth.selectedIndex;
			var index = stmonth.value;	
			if(index == ""){index = 0;}	
			emonth.innerHTML = "";
			for(var ei = index; ei<13; ei++)
			  {
					var y=document.createElement('option');
					y.text = mon_array[ei];
					y.value = ei;
					if(ei == esave)
					{
						
						ySel = y;
					}
					try{
						emonth.add(y,null);						
					   }
					catch(ex)
						{emonth.add(y);}
			  }
			  if (ySel != null)
		      ySel.selected = true;


			  
			  
	  }
	
	
	


}


//controls the start moths available for the user to select if 
//the start and end year is one and the same

function endmonth_sel()
{

    var styear = document.getElementById('id_startyear');
	var eyear = document.getElementById('id_endyear');
	var stmonth = document.getElementById('id_startmonth');
	var emonth  = document.getElementById('id_endmonth');
	var stday = document.getElementById('id_startday');
	var eday = document.getElementById('id_endday');
	
	var mon_array = ["","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];	
	
	stday.disabled = false;
	eday.disabled = false;
	
	if(styear.value == eyear.value)
	  {
			if(stmonth.value != ""){var stsave = stmonth.value;}
			//var index = emonth.value;
			//if(index == ""){index = 0;}
			//alert(emonth.value);				
			stmonth.innerHTML = "";
			var ySel;
			for(var ei = 0; ei<=emonth.value; ei++)
			  {
					var y=document.createElement('option');
					y.text = mon_array[ei];
					y.value = ei;
					if(ei == stsave)
						{
						ySel = y;
						}
					try{
						stmonth.add(y,null);						
					   }
					catch(ex)
						{stmonth.add(y);}
			  }//for
			  if (ySel != null)
				  ySel.selected = true;
			  
	  }//end if 

}

function startday_sel()
{

var styear = document.getElementById('id_startyear');
 var eyear = document.getElementById('id_endyear');
 var stmonth = document.getElementById('id_startmonth');
 var emonth  = document.getElementById('id_endmonth');
 var stday = document.getElementById('id_startday');
var eday = document.getElementById('id_endday');
	
 var ySel;

  if(stmonth.value == emonth.value)
	{
        if(eday.value != ""){var esave = eday.value;}
		eday.innerHTML = "";
		
		for(var eind = stday.value; eind <= 31 ; eind++)
		{
				var y=document.createElement('option');
				y.text = eind;
				y.value = eind;
				if(eind == esave)
					{
						
						ySel = y;
					}
				try{
					eday.add(y,null);						
				}
				catch(ex)
					{eday.add(y);}
		 
		}
		if (ySel != null)
		ySel.selected = true;
		
		
	 }   



}

function endday_sel()
{
var styear = document.getElementById('id_startyear');
var eyear = document.getElementById('id_endyear');
var stmonth = document.getElementById('id_startmonth');
var emonth  = document.getElementById('id_endmonth');
var stday = document.getElementById('id_startday');
var eday = document.getElementById('id_endday');
	
	
	if(stmonth.value == emonth.value)
	{
		
		if(stday.value != ""){var stsave = stday.value;}		
		stday.innerHTML = ""; 		
		var ySel;
		for(var eind = 1; eind <= eday.value ; eind++)
		{
				var y=document.createElement('option');
				y.text = eind;
				y.value = eind;
				if(eind == stsave)
				{
				   ySel = y;
				}
				try{
					stday.add(y,null);						
				}
				catch(ex)
					{stday.add(y);}
		 
		}
		if (ySel != null)
		ySel.selected = true;
		
  }	
		

}

//Displays a profile
function displayProfile(url)
{
	var profileWin = window.open('species/' + url, 'profile', 'height=600,width=800,location=0,scrollbars=1');
	profileWin.focus();
}
