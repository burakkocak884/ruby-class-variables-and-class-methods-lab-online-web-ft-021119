
require 'pry'
class Song

attr_accessor :name, :artist, :genre

 @@count = 0
 @@artists = []
 @@genres = []

#binding.pry
		def initialize(name, artist, genre)
			@name = name
			@artist = artist
			@genre = genre
			@@artists << artist
			@@genres << genre
			@@count += 1
			#binding.pry
		end

				def self.count
				@@count
				#binding.pry
				end
			           
			           def self.genres
			           	#binding.pry
			           	@@genres.uniq!
			           	#binding.pry
			           end

								def self.artists
								@@artists.uniq!
								end

		 			def self.genre_count
		 				count = 1
		 				genre_hash = {}
		 				@@genres.sort!
		 				#binding.pry
		 				
		 				@@genres.each_with_index do |genre, index|
		 				#	binding.pry
                         
		 					if @@genres[index] == @@genres[index+1]
		 						count += count
	 					 genre_hash[genre] = count 
	 					 #binding.pry	
		 					elsif @@genres[index] != @@genres[index+1]
		 						
		 						genre_hash[genre] = count
		 				#		binding.pry
		 					end	
		 				#		binding.pry
		 					end
						return genre_hash
						#binding.pry
		 				

		 			end


		 def self.artist_count
		 		count = 1
		 		artist_hash = {}
		 		@@artists.sort!
		 		#binding.pry

			@@artists.each_with_index do |artist, index|
		 		#			binding.pry
                         
		 					if @@artists[index] != @@artists[index+1]
		 						
		 						artist_hash[artist] = count
		 		#				binding.pry
		 					elsif @@artists[index] == @@artists[index+1]
		 						count += count
	 					 artist_hash[artist] = count 
		 						
		 		#				binding.pry
		 					end
		 				end
						return artist_hash


		
			end

end