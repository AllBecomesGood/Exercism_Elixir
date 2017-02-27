defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]
	# A=65 C=67 G=71 T=84
  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
	#if length(strand)==0 do 
		#0 
	#else
	#Enum.filter(strand, fn(element) -> match?(nucleotide, element) end)
	Enum.filter(strand, fn(x) -> x==nucleotide end)
	|> length
	#end
	#strand.at(0)
	#length = length(strand)
	#x=0
	#for {:nucleotide} <- [strand], do: x+1
	#for n <- strand, nucleotide, do: x+1
	#x
  end


  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  #@nucleotides [?A, ?C, ?G, ?T]
  # A=65 C=67 G=71 T=84
  @spec histogram([char]) :: map
  def histogram(strand) do
	#Enum.map(nucleotides, fn({k, v}) -> {k, count(strand, v)} end)
	
	keywordlistmapthing = %{?A => count(strand, ?A), ?C => count(strand, ?C), ?G => count(strand, ?G), ?T => count(strand, ?T)}
	#aa = count(strand, ?A)
	#cc = count(strand, ?C)
	#gg = count(strand, ?G)
	#tt = count(strand, ?T)
	#keywordlistmapthing.put(%{?A => aa, ?C => cc, ?G => gg, ?T => tt})
	#Enum.map(strand, fn() -> end)
	#IO.Puts(keywordlistmapthing)
  end
end
