function self.on_load()
   self.sprites.add_sprite_named_from_type("bg","bg",0,0);
   self.sprites.add_sprite_named_from_type("pj","plutoniumjo",100,0);
   self.sprites.add_sprite_from_type("sol",-200,600);
   
   self.npc=0;
   while(self.npc < 5) do
      nx=randomize(800) - 100;
      ny=randomize(600) - 50;
      c=self.sprites.add_sprite_from_type("carotte",nx,0);
      
      self.sprites[c].states.set_state
      ("move",
       {
	  physics={0,pi()/2,9.8,10.0},
	  move={2,{dir="west"}}
       });
      self.npc=self.npc +1;
   end
   
   self.npf=0;
   
   while(self.npf < 50) do
      nx=randomize(10);
      ny=randomize(20);
      self.sprites.add_sprite_from_type("plateforme",nx*128,ny*32);
      self.npf=self.npf +1;
   end
   
   
   self.sprites["pj"].states.set_state
   ("normal",
    {
       physics={0,pi()/2,9.8,10.0}
    });
   
   self.timer.start();
   
   self.sprites.save_to_file("blabla.xml");
end


function self.on_loop()
   self.timer.step();
   
end