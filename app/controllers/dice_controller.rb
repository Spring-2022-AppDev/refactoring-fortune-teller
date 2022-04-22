class DiceController < ApplicationController

  def infinity_and_beyond
    @num_dice = params.fetch("number_of_die")
    @side_dice = params.fetch("number_of_sides")

    @array_of_rolls = Array.new

    @num_dice.to_i.times do
      @array_of_rolls.push(rand(@side_dice.to_i)+1)
    end 

    render({:template => "dice_templates/infinity_and_beyond.html.erb"})
  end
  
end
