get '/' do
  @anagram_results = params[:anagram]
  erb :index
end

post '/anagram' do
  @anagram_results = find_anagrams(params[:user_input])
  erb :index
end

def find_anagrams(string)
  anagram_results = []
  Word.where(sorted_entry: string.downcase.split('').sort.join).each do |i|
    anagram_results << i[:entry]
  end
  anagram_results
end

