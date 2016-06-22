@possible_questions = [ movie.year, movie.cast_member.first, movie.director, movie.length]

@the_question = @possible_questions.sample

puts @the_question



