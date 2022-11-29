class BattleController < UsersBackofficeController
    def index
      @bagmons = Bagmon.all
  
      if (params[:bagmon1] && params[:bagmon2]) 
        @bagmon1 = Bagmon.find(params[:bagmon1])
        @bagmon2 = Bagmon.find(params[:bagmon2])
  
        @rounds = []
  
        vidaBagmon1 = 100
        vidaBagmon2 = 100
  
        bagmonInAttack = rand(1..2) == 1 ? @bagmon1 : @bagmon2
  
        while (lifeBagmon1 > 0 && lifeBagmon2 > 0) do
  
          if (bagmonAtacando == @bagmon1)
            attackValue = rand(5..10)
            vidaBagmon2 -= valorAtaque
            @rounds << @bagmon1.name + " golpeou " + @bagmon2.name + " e deu um dano de " + valorAtaque.to_s + ". E agora " + @bagmon2.name + " tem " + vidaBagmon2.to_s + " pontos de vida."
            bagmonAtacando = @bagmon2
          else
            attackValue = rand(5..10)
            vidaBagmon1 -= valorAtaque
            @rounds << @bagmon2.name + " golpeou " + @bagmon1.name + " e deu um dano de " + valorAtaque.to_s + ". E agora " + @bagmon1.name + " tem " + vidaBagmon1.to_s + " pontos de vida."
            bagmonAtacando = @bagmon1
          end
        end

        if (vidaBagmon1 > 0)
          @rounds << @bagmon1.name + " venceu!"
        else
          @rounds << @bagmon2.name + " venceu!"
        end
      end
    end
  end