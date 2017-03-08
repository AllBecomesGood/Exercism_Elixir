defmodule Bob do
  def hey(input) do
    
	cond do
		
		String.split(input, " ", trim: true) |> length == 0 -> "Fine. Be that way!"
		
		questionTest(input) == true -> "Sure."
		
		shoutTest(input) == true -> "Whoa, chill out!"
		
		true -> "Whatever."
		
		#true -> raise "Your implementation goes here"
        #String.length(input)==0 -> "Fine. Be that way!"
		#"_" <> "?" == input ->
		#input == "_" <> "?" ->
		#63 in input
		#Enum.member?(input, "?")==true ->
		#List.last(input)=="?" -> 
		#String.contains?(input, "?") ->
		# "Sure."
		#"?" == List.last(input) -> "Sure."
		#"?" = hd(Enum.reverse(list));
		# need to split that string somehow. it counts as one element listName = ["asdf?"] so head and tail are == "asdf?"
		#pattern = :binary.compile_pattern([" ", "?"])
		#String.split(input, pattern) == "?" -> "Sure."
		# the above removes the ? from the end
		#& <> "?" == input -> "Sure."
		#String.graphemes(hd(input)) == "?" -> 
		 #"Sure."
		#[head | tail] = Enum.reverse(String.graphemes(input))
		#converting to uppercase messes with later functions?, would be good to do it temporarily only
		#input == String.upcase(input) ->
		# "Whoa, chill out!"
		 
		
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
