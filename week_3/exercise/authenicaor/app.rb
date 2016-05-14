require_relative('lib/authenticator')
require_relative('lib/modifier')



login_1 = Authenticator.new("josh", "swordfish")
# login_2 = Authenticator.new("faraz", "shark")

puts "What's your name?\n"
name_imp = "josh"

puts "What's your password?\n"
password_imp = "swordfish"

if login_1.authenticator?(name_imp, password_imp)
  puts "Welcome back #{name_imp}\n"
  string = "well im really tired at the moment"

  puts "What would you like to do???\n
        reverse?\n
        word count?\n
        letter count?\n
        upper case?\n
        lower case\n"

  user_imput = "word count"
    
    if user_imput == "word count"
      word_counter = Modifier.new(string)
      word_counter.word_count_it
      puts "Number of words in the sentence is #{word_counter.word_count_it}"
    
    elsif user_imput == "letter count"
      letter_counter = Modifer.new(string)
      letter_counter.letter_count_it
      puts "Number of letters in the sentence is #{letter_counter.letter_counter_it}"
    
    elsif user_imput == "upper case"
      upper_caser = Modifer.new(string)
      upper_caser.up_case_it
      puts "The sentence up cased is:\n
            #{upper_caser.up_case_it}"

    elsif user_imput == "lower case"
      lower_caser = Modifer.new(string)
      lower_caser.lower_case_it
      puts "The sentence lowered cased is:\n
            #{lower_caser.lower_case_it}"
    else user_imput == "reverse"
      reverser = Modifer.new(string)
      reverser.reverse_it
      puts "The sentence reversed is:\n
            #{reverser.reverse_it}"
    end 	
       		   	
  # sentence_tbc = WordCount.new(string)
else


end