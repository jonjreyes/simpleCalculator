
#main method
def runProgram
	#greeting
	greeting
	
	#Enter first number 
	print "Please enter your first number: "
	num1 = gets.chomp
	
	#select math function
	puts "\n Please enter the first letter of the math function from the following choices:"
	print " a-add \n s-subtract \n m-multiply \n d-division \n Selected Function:"
	choice = gets.chomp
	checkChoice(choice.downcase)
	
	#get second number 
	print " Please enter your second number: "
	num2 = gets.chomp
	
	#runnning the math 
	doMath(num1, num2, choice.downcase)
	
end

#initial greeting
def greeting
	puts 
	puts "Welcome to the basic calculator program"
	puts "This is a calculator with the basic functions of add, subtract, multiply and divide"
	
end

#checkChoice will check wether the inputted function is valid
def checkChoice(choice)
	case choice
		when "a"
			puts "\n Great! You would like to add! "
		when "s"
			puts "\n Great! You would like to subtract!"
		when "m"
			puts "\n Great! You would like to multiply!"
		when "d"
			puts "\n Great! You would like to divide!"
		else
			puts "ERROR! Your choice is invalid, please enter the first letter from the following choices:"
			print " a-add \n s-subtract \n m-multiply \n d-division \n Selected Function:"
			choice = gets.chomp
			checkChoice(choice.downcase)
	end
end

#function that runs the math 
def doMath(num1String, num2String, mathFunction)

	total = 0 
	
	#converting the inputted number strings to integer values
	num1 = num1String.to_i
	num2 = num2String.to_i

	case mathFunction
		when "a"
			total = num1 + num2
		when "s"
			total = num1 - num2
		when "m"
			total = num1 * num2
		when "d"
			total = num1 / num2
		else
			puts "ERROR"
		end
		
	print " Answer is: "+ total.to_s

end

runProgram
			
		
	