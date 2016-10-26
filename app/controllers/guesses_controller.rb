class GuessesController < ApplicationController
def index

@first = params["first_number"]
@second = params["second_number"]
@third = params["third_number"]
@guess = @first.to_s + ", " + @second.to_s + ", " + @third.to_s

 if @first <@second && @second < @third
   @pattern = "YES!"
 else
   @pattern = "NO!"
 end

render("guesses/index.html.erb")
end

def answer
@user_answer = params["rule"]
render("guesses/show_answer.html.erb")
end

def sequence

end

end
