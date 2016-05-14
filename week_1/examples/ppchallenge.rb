class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end




ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

aged_languages = array_of_languages.map do | language |
  language.age += 1
  language
end

sorted_by_age = aged_languages.sort_by { | language | language.age }.reverse
# sorted_by_age = aged_languages.delete_if { |language| language.name=="Java"}
# sorted_by_age.shuffle!
# sorted_by_age.uniq! {| language | language.age}
# array_printer(sorted_by_age.rotate)
# sorted_by_age[2..4] !!!slice!!!
# array_printer(sorted_by_age.take(1))
# array_with_take = sorted_by_age.take_while { | language | language.age > 20 } # stops the moment it becomes false.


array_printer(array_with_take)