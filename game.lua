-- guess number game

-- Remove any final \n from a string.
--   s: string to process
-- returns
--   s: processed string
function chomp(s)
  return s.gsub(s, "\n$", "")
end

math.randomseed( os.time() )

computer_choice = math.random(1, 100)

io.write('Познай числото ми (1-100)!\n')
io.write('my number is: ', computer_choice, "\n")
attempts = 1

while (attempts <= 5) do
   io.write(
      'Въведете предположението си ['
      , attempts
      , '/5]: '
   )
   user_choice = tonumber(io.read())

   if (user_choice == computer_choice) then
      io.write('Браво, ти позна числото - ', computer_choice)
   end
   attempts = attempts + 1
end


