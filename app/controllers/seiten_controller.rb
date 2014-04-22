class SeitenController < ApplicationController

 def login
        @fehler1 = false
        @fehler2 = false
    

    if params[:nachname] != nil
      if User.find_by_nachname(params[:nachname]) == nil
        @fehler1 = true
      elsif User.find_by_nachname(params[:nachname]).passwort == params[:passwort]
        session[:nachname] = params[:nachname]
        session[:vorname] = User.find_by_nachname(params[:nachname]).vorname
        redirect_to(:action => 'welcome')
        else
        @fehler2 = true
      end 
    end 
  end



  def welcome
      if params[:logout] != nil
      session[:nachname] = nil
      redirect_to(:action => 'logout')
    end

    @fehler = false
    if session[:nachname] == nil
     @fehler = true 
    else
     @nachname = session[:nachname]
     $vorname = session[:vorname] 
    end  
   
    @fehler3 = false
   

    if params[:id_nummer] != nil
      if Lehrer.find_by_id(params[:id_nummer]) == nil
        @fehler3 = true
      else 
        $id = params[:id_nummer]
        redirect_to(:action => 'bewertung')
      end
    end

  end

  def bewertung
       if params[:logout] != nil
     session[:nachname] = nil
     redirect_to(:action => 'logout')
    end

    @fehler = false

    if session[:nachname] == nil
     @fehler = true 
    else
     @nachname = session[:nachname] 
   end

   if params[:ug] != nil
    $ug = params[:ug]
    redirect_to(:action => 'anzeige')
  end

  end

  def anzeige
    if params[:logout] != nil
     session[:nachname] = nil
     redirect_to(:action => 'logout')
    end

    @fehler = false
    if session[:nachname] == nil
     @fehler = true 
    else
     @nachname = session[:nachname] 
    end
      if params[:zurbewertung] != nil
     session[:nachname] = nil
     #redirect_to(:action => 'bewertung')
    end 
   
  end

  def lehreranzeige
  end

  def logout
  end

end