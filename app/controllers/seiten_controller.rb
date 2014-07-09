class SeitenController < ApplicationController

 def login
        @fehler1 = false
        @fehler2 = false
    

    if params[:nachname] != nil

      if Lehrer.find_by_name(params[:nachname]) == nil
        @fehler1 = true
      elsif Lehrer.find_by_name(params[:nachname]).fach1 == params[:passwort]
       session[:lehrername] = params[:nachname]
       redirect_to(:action => 'lehreranzeige')
        end

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

    if !params[:ug].blank? && !params[:uv].blank? && !params[:ums].blank? && !params[:fk].blank?
    $ug = params[:ug]
    a = Lehrer.find($id)
    a.ug = a.ug + $ug.to_i
    a.save
    
   # if params[:uv] != nil
    $uv = params[:uv]
    a = Lehrer.find($id)
    a.uv = a.uv + $uv.to_i
    a.save

   # if params[:ums] != nil
    $ums = params[:ums]
    a = Lehrer.find($id)
    a.ums = a.ums + $ums.to_i
    a.save
 
   # if params[:fk] != nil
    $fr = params[:fk]
    a = Lehrer.find($id)
    a.fr = a.fr + $fr.to_i
    a.save

     a = Lehrer.find($id)
    a.Anzahl = a.Anzahl + 1
    a.save
   redirect_to(:action => 'anzeige')

#   end
# end
#end
end
 
  end

  def anzeige
       if params[:zurbewertung] != nil
     redirect_to(:action => 'welcome') and return
    end 

    @fehler = false
    if session[:nachname] == nil
     @fehler = true 
    else
     @nachname = session[:nachname] 
    end
  
   
  end

  def lehreranzeige
       if params[:logout] != nil
      session[:lehrername] = nil
      redirect_to(:action => 'logout')
       end


    if session[:lehrername] == nil
      @fehler
    else
         $vorname = session[:lehrername] 
         $ID = Lehrer.find_by_name(session[:lehrername]).id
    end
  end

  def logout
  end

end