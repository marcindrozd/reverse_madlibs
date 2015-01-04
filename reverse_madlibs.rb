dictionary = {
  :nouns => ["hat", "car", "hammer", "dog"],
  :verbs => ["do", "like", "swim", "cook"],
  :adjectives => ["beautiful", "happy", "bright", "interesting"]
}

if ARGV.empty?
  puts "No file provided."
  exit
end

if !File.exists?(ARGV.first)
  puts "File '#{ARGV.first}' not found."
  exit
end

text = File.open(ARGV.first, "r") do |file|
  file.read  
end

text = text.gsub!("NOUN", dictionary[:nouns].sample)
text = text.gsub!("VERB", dictionary[:verbs].sample)
text = text.gsub!("ADJECTIVE", dictionary[:adjectives].sample)

puts text