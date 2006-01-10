function self.on_keyrelease(e)
   curstate=self.parent.parent.sprites["pj"].states.get_state();
   if (curstate=="jump") then 
   else
      if e=="right" or e=="left" or e=="space" then
	 self.parent.parent.sprites["pj"].states.set_state
	 ("normal",
	  {physics={0,pi()/2,9.8,10.0}}
       );
      end
   end
end


function self.on_keypress(e)
   if e=="echap" then
      exit(2)
   end
   
   curstate=self.parent.parent.sprites["pj"].states.get_state();
   
   
   if e=="space" then
      if(curstate == "jump") then
	 
      else
	 print("attack");
	 self.parent.parent.sprites["pj"].states.set_state
	 ("attack",
	  {
	     physics={0,pi()/2,9.8,10.0}
	  });
	 
	 
      end
   end
   
   if e=="right" then
      if(curstate == "jump") then
	 
      else
	 
	 self.parent.parent.sprites["pj"].states.set_state
	 ("move",
	  {
	     physics={0,pi()/2,9.8,10.0},
			    move={2,{dir="west"}}
			 });
	 
	 self.parent.parent.sprites["pj"].dir="west";
	 
      end
   end
   
   
   if e=="left" then
      if(curstate == "jump") then
	 
      else
	 self.parent.parent.sprites["pj"].states.set_state
	 ("move",
	  {
	     physics={0,pi()/2,9.8,10.0},
	     move={2,{dir="east"}}
	  });
	 self.parent.parent.sprites["pj"].dir="east";
      end
   end
   
   if e=="up" then
      
      
      if(curstate == "jump") then
	 
      else
	 
			
	 if(curstate == "normal") then
	    angle=pi()/2;
	 end
	 
	 if(curstate == "move") then
	    if(self.parent.parent.sprites["pj"].dir=="east") then
	       angle=pi()/3;
	    end
	    
	    if(self.parent.parent.sprites["pj"].dir=="west") then
	       angle=2*pi()/3;
	    end
	    
	 end
	 
	 self.parent.parent.sprites["pj"].states.set_state
	 ("jump",
	  {
	     physics={-8,angle,9.8,10.0},
	  });
      end
      
   end
		  
end
