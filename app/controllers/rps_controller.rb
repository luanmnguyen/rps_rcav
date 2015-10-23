class RpsController < ApplicationController

    def rock

      @your_move="Rock"
      @img="/assets/images/rock.png"

      @computer_move=["Rock","Paper","Scissors"].sample
      @img_comp="/assets/images/#{@computer_move}.png"
      if @computer_move=="Rock"
        @result="Tie!"

      elsif @computer_move=="Paper"
        @result="You lost!"

      else
        @result="You won!"


      end

      render("rock.html.erb")
    end

    def paper
      @your_move="Paper"
      @img="/assets/images/paper.png"

      @computer_move=["Rock","Paper","Scissors"].sample
      @img_comp="/assets/images/#{@computer_move}.png"

      if @computer_move=="Paper"
        @result="Tie!"
      elsif @computer_move=="Scissors"
        @result="You lost!"
      else @result="You won!"
      end

      render("paper.html.erb")
    end

    def scissors
      @your_move="Scissors"
      @img="/assets/images/scissors.png"

      @computer_move=["Rock","Paper","Scissors"].sample
      @img_comp="/assets/images/#{@computer_move}.png"

      if @computer_move=="Scissors"
        @result="Tie!"
      elsif @computer_move=="Rock"
        @result="You lost!"
      else @result="You won!"
      end

      render("scissors.html.erb")
    end
end
