Goals:
  * Core
    * 8-bit CPU
    * 8-bit ISA
      * Basic
      * Expanded
  * Spiders
    * Compiler
    * Interpreter
    * REPL
  * 16-bit expansion

CPU:

  Registers:
    A
    B
    C
    D
    IP
    SP

  Flags:
    Z - zero
    C - carry
    N - negative

ISA:

  mov
    mov reg, reg
    mov reg, addr
    mov reg, const
    mov addr, reg
    mov const, reg
  db -- define variable
    db const
  add
  sub
  inc
  dec
  mul
  div
  and
  or
  xor
  not
  shl -- shift left
  shr -- shift right
  cmp -- z = 1 if vals are eq, n = 1 if A - B is neg
  jmp -- set pc to val
    jc -- jump if carry
    jnc -- jump if no carry
    jz -- jump if zero
    jnz -- jump if not zero
    jgt -- jump if no carry and no zero (gt)
    jge -- jumpif no carry (ge)
    jlt -- jump if carry (lt)
    jle -- jump if carry and zero (le)
    jeq -- jump if zero (eq)
    jne -- jump if no zero (ne)
  call
  ret
  push
  pop
  hlt
