func isInRange(at index: Int, in stack: [Int]) -> Bool {
  return index >= 0 && index < stack.count
}

func getCard(at index: Int, from stack: [Int]) -> Int {
  return isInRange(at: index, in: stack) ? stack[index] : -1
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  if isInRange(at: index, in: stack) {
    var newStack = stack
    newStack[index] = newCard

    return newStack
  }

  return stack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  return insertCard(at: stack.count, from: stack, to: newCard)
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  if isInRange(at: index, in: stack) {
    var newStack = stack
    newStack.remove(at: index)

    return newStack
  }

  return stack
}

func insertCard(at index: Int, from stack: [Int], to newCard: Int) -> [Int] {
  var newStack: [Int] = stack
  newStack.insert(newCard, at: index)

  return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  return removeCard(at: stack.count - 1, from: stack)
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  return insertCard(at: 0, from: stack, to: newCard)
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  removeCard(at: 0, from: stack)
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
  return stack.filter{$0.isMultiple(of: 2)}.count
}
