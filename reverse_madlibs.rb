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

text = text.gsub!("NOUN").each do
  dictionary[:nouns].sample
end

text = text.gsub!("VERB").each do
  dictionary[:verbs].sample
end

text = text.gsub!("ADJECTIVE").each do
  dictionary[:adjectives].sample
end

puts text