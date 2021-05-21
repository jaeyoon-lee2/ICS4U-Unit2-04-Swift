/*
This class creates an integer stack.
author  Jay Lee
version 1.3
since   2020-05-21
*/

class MrCoxallStack {
  enum InvalidInputError : Error {
    case invalidInput
  }

  private var stack:[Int] = []

  // This method push an integer to the stack.
  func Push(pushNumber: String) {
    do {
      guard let pushNumber = Int(pushNumber) else {
        throw InvalidInputError.invalidInput
      }
      self.stack.append(pushNumber)
    } catch {
      print("\nInvalid input.")
    }
  }

  // This method returns the last integer in the stack.
  func Peek() -> Int? {
    if (self.stack.count == 0) {
      return nil
    }
    return self.stack[self.stack.count - 1]
  }

  // This method pops the top integer from the stack.
  func Pop() -> Int? {
    if (self.stack.count == 0) {
      return nil
    }
    let element = self.Peek()
    self.stack.remove(at: self.stack.count - 1)
    return element
  }

  // This method clears the stack.
  func Clear() {
    for counter in stride(from: self.stack.count, to: 0, by: -1) {
      self.stack.remove(at: counter - 1)
    }
  }

  // This method prints out the list of items in the stack.
  func ShowStack() {
    for index in 0..<self.stack.count {
      print(self.stack[index])
    }
  }
}
