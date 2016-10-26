class GuessesController < ApplicationController

def index

@first = params["first_number"]
if @first.nil?
  @list = []
   render("guesses/index.html.erb")
 else

@first = params["first_number"]
@second = params["second_number"]
@third = params["third_number"]

if @first < @second && @second < @third
  @pattern = "YES!"
else
  @pattern = "NO!"
end

@sequence = @first.to_s + ", " + @second.to_s + ", " + @third.to_s + " " + @pattern



g = Guess.new
g.sequence_string = @sequence
g.save

@list = Guess.all



render("guesses/index.html.erb")
end
end

def answer
@user_answer = params["rule"]
render("guesses/show_answer.html.erb")
end

def sequence

end

end
