function counter() {
  let count = 0

  function increment() {
    ++counter
  }

  return {
    inc: increment,
    get: () => count,
    set: (val) => count = val
  }
}

const clos = counter()
clos.inc()
clos.inc()
clos.set(10)

if(clos.get() !== 10) {
  throw new Error("Should not trigger")
}

console.log("JS is Ok")