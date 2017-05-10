import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var angles = [Int]()

// Loop until valid input is received

func sum(numbers : [Int]) -> Int {
    var total = 0
    for n in numbers {
        total += n
    }
    return total
}


while angles.count < 3 {
    
    // Show the prompt
    print("Angle \(angles.count + 1)? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        if let angleAsInt = Int(notNilInput) {
            if (angleAsInt >= 1 && angleAsInt <= 178) {
                angles.append(angleAsInt)
                if angles.count == 3 && sum(numbers: angles) != 180 {
                    angles.removeAll()
                }
            }
        }
        
        // Save the input given, as we are certain it's what we are looking for now
        //inputToProcess = notNilInput
        
    }
    
}

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....

// check for an equal triangle

var output : String?

if (angles[0] == 60 && angles[1] == 60 && angles[2] == 60) {
    output = "Equilateral"
} else if (angles[0] == angles[1] || angles[1] == angles[2] || angles[2] == angles[0]) {
    output = "Isoceles"
} else {
    output = "Scalene"
}


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.

print("The Triangle is: \(output!)")

