-- guess number game

math.randomseed( os.time() )

computer_choice = math.random(1, 100)

io.write('Познай числото ми (1-100)!\n')

attempts = 1

while (attempts <= 5) do
   io.write(
      'Въведете предположението си ['
      , attempts
      , '/5]: '
   )
   user_choice = io.read()
   attempts = attempts + 1
end


