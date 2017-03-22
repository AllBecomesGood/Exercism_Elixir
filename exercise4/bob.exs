defmodule Bob do
  def hey(input) do
    
	cond do
		
		String.split(input, " ", trim: true) 
		|> length == 0 -> "Fine. Be that way!"
		
		questionTest(input) -> "Sure."
		# Easier way found in other solution.
		#String.ends_with?(input, "?") -> "Sure."

		shoutTest(input) -> "Whoa, chill out!"
		
		true -> "Whatever."
    end
  end
  
  def questionTest(input) do
	[head | tail] = Enum.reverse(String.graphemes(input))
	 if head=="?" do 
	  true
	 end
  end
  
  def shoutTest(input) do
	#numbers and symbolstuff is same upper and lowercase
	if input == String.upcase(input) && input != String.downcase(input) do
	 true
	end
  end
  
end
