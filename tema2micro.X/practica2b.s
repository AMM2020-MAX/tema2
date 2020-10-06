PROCESSOR 16F887
#include <xc.inc>
CONFIG FOSC=INTRC_NOCLKOUT
CONFIG WDTE=OFF
CONFIG PWRTE=ON
CONFIG MCLRE=OFF
CONFIG CP=OFF
CONFIG CPD=OFF
CONFIG BOREN=OFF
CONFIG IESO=OFF
CONFIG FCMEN=ON
CONFIG DEBUG=ON

CONFIG BOR4V=BOR40V
CONFIG WRT=OFF
GLOBAL jade
PSECT udata
jade:
    DS 1
PSECT resetVec,class=CODE,delta=2
resetVec:
PAGESEL final
goto final

PSECT code
 main:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x7E
    movwf PORTA
   PAGESEL main
   return
   
main1:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x30
    movwf PORTA
   PAGESEL main
   return   
   
main2:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x6D
    movwf PORTA
   PAGESEL main
   return  
   
main3:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x79
    movwf PORTA
   PAGESEL main
   return
main4:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x33
    movwf PORTA
   PAGESEL main
   return
main5:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x5B
    movwf PORTA
   PAGESEL main
   return
main6:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x5F
    movwf PORTA
   PAGESEL main
   return
main7:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x70
    movwf PORTA
   PAGESEL main
   return
main8:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x7F
    movwf PORTA
   PAGESEL main
   return
main9:
    BANKSEL ANSEL
    movlw 0x00
    movwf ANSEL
    BANKSEL PORTA
    clrf PORTA
    BANKSEL TRISA
    clrf TRISA
    BANKSEL PORTA
    movlw 0x7B
    movwf PORTA
   PAGESEL main
   return
  final:
    call main
call main1
   call main2
   call main3
   call main4
   call main5
   call main6
   call main7
   call main8
   call main9
    END


