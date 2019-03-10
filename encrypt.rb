require 'digest'
puts 'Введите слово или фразу для шифрования:'
user_input = STDIN.gets.chomp
sleep 1

puts 'Каким способом зашифровать:
1. MD5
2. SHA1'

user_choice = STDIN.gets.chomp
sleep 1

puts 'Вот что получилось:'
puts Digest::MD5.hexdigest "#{user_input}" if user_choice == '1'
puts Digest::SHA1.hexdigest "#{user_input}" if user_choice == '2'
