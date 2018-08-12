class ActorsController < ApplicationController
   def listado
       @actors=Actor.all
   end

   def new
      @actor.Actor.new
   end

   def crear
      @actor= Actor.new (params[:actor].permit(:name))
      @actor.save 
      redirect_to Actor_path
   end
end
