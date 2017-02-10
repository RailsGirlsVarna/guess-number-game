#!/usr/bin/env lua-any
-- Lua-Versions: 5.3
-- to work above shebang package lua-any need to be installed

-- ##################
-- guess number game
-- ##################

math.randomseed( os.time() )

computer_choice = math.random(1, 100)

io.write('Познай числото ми (1-100)!\n')
io.write('my number is: ', computer_choice, "\n")
attempts = 1

function hint(s)
      io.write('Предположението ти бе интерпретирано като: ', s, "\n")
end

while (attempts <= 5) do
   io.write(
      'Въведете предположението си ['
      , attempts
      , '/5]: '
   )
   user_choice = io.read()
   original_length = user_choice.len(user_choice)
   -- replace all non numeric symbols with empty string
   user_choice = user_choice.gsub(user_choice, "[^%d]", '')
   untainted_length = user_choice.len(user_choice)
   if (0 == original_length) or (0 == untainted_length) then
      user_choice = 0
      untainted_length = original_length
      hint(0)
   elseif untainted_length < original_length then
         hint(user_choice)
   end
   user_choice = tonumber( user_choice )

   if (user_choice == computer_choice) then
      io.write('Браво, ти позна числото - ', computer_choice, "\n")
      os.exit(true)
   elseif user_choice < computer_choice then
      io.write("Нагоре\n")
   elseif user_choice > computer_choice then
      io.write("Надолу\n")
   else
      io.write("Уау!!! Как, по дяволите, стигнахме до тук?\n")
      os.exit(false)
   end

   if 5 == attempts then
      io.write('Ти загуби, числото ми беше: ', computer_choice, "\n")
      os.exit(true)
   end

   attempts = attempts + 1
end
