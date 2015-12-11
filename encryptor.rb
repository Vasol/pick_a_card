require 'Digest'

puts "Введите слово или фразу для шифрования:"

slovo = gets.chomp

puts "Каким способом зашифровать: \n 1. MD5 \n 2. SHA1"

metod = gets.chomp

if metod == 1
  puts "Вот что получилось: \n #{Digest::MD5.hexdigest.(slovo)}"
else
  puts "Вот что получилось: \n #{Digest::SHA1.hexdigest(slovo)}"
end