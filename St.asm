.data 
str: .asciiz "hello world"
.text 

la $t0,str
li $t1,0
lb $t2,($t0)

start:
beqz $t2,endloop

add $t1,$t1,1
add $t0,$t0,1
lb $t2,($t0)
j start

endloop:
move $a0,$t1
li $v0,1
syscall 
li $v0,10
syscall 