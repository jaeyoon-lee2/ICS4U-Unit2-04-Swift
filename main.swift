/*
This program uses the MrCoxallStack class.
author  Jay Lee
version 1.3
since   2020-05-21
*/

let aStack = MrCoxallStack()
var toPop: String

while(true) {
  print("Enter the number to push on the stack: ", terminator:"")
  let inputString = String(readLine()!)
  if (inputString.uppercased() == "END") {
    break
  } else if (inputString.uppercased() == "CLEAR") {
    aStack.Clear()
    print("\nThe stack is cleared.")
  } else {
    aStack.Push(pushNumber: inputString)
  }
  repeat {
    if (aStack.Peek() == nil) {
      print("\nThe Stack is empty.")
      break
    }
    print("\nDo you want to pop (the top element : \(aStack.Peek()!))? ", terminator:"")
    toPop = String(readLine()!).uppercased()
    if (toPop == "Y" || toPop == "YES") {
      print("\nThe top element : \(aStack.Pop()!) is popped.")
    }
  } while toPop == "Y" || toPop == "YES"
  print("")
}
print("\nThe Stack: ")
aStack.ShowStack()
print("\nDone.")
