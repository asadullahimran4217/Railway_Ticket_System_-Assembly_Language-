org 100h

.model large
.stack 1000h
.data

a1 db 10,13,'             *******************************************'  
a2 db 10,13,'             **                  Welcome              **'
a3 db 10,13,'             **                     To                **'  
a4 db 10,13,'             **                Bangladesh             **'
a5 db 10,13,'             **                 Railway               **' 
a6 db 10,13,'             *******************************************'

a7 db 10,13,'             Train List------$' 
a8 db 10,13,'             Enter Your choice: $' 
a19 db 10,13,'                    Enter 1 to display Train List: $'    
a34 db 10,13,'                          Peak Your Ticket: $'
a35 db 10,13,'                          Enter Quantity: $' 
a36 db 10,13,'                  Invalid Input !! Rerun the Programs'
a37 db 10,13,'                          Total Price: $'
a38 db 10,13,'                1.Trains List: $'
a39 db 10,13,'                2.Exit: $'
                                                                     
a9 db 10,13,'               1. Karnaphuli Express(Dhaka to Chittagong)$'                                                                     
a10 db 10,13,'              2. Parabat Express(Dhaka to Sylhet)$'
a11 db 10,13,'              3. Sundarban Express(Dhaka to Khulna)$'

a12 db 10,13,'         ******    Karnaphuli Express Tickets List    ******$'
a13 db 10,13,'             1.Shovan                230/-$'
a14 db 10,13,'             2.Shovan Chair          300/-$'
a15 db 10,13,'             3.First Class Seat      400/-$'
a16 db 10,13,'             4.First Class Chair     450/-$'
a17 db 10,13,'             5.First Class Berth     500/-$'
a18 db 10,13,'             4.AC Berth              600/-$'  


a20 db 10,13,'         ******     Pararbat Express Tickets List     ******$'
a21 db 10,13,'             1.Shovan                200/-$'
a22 db 10,13,'             2.Shovan Chair          270/-$'
a23 db 10,13,'             3.First Class Seat      350/-$'
a24 db 10,13,'             4.First Class Chair     450/-$'
a25 db 10,13,'             5.First Class Berth     500/-$'
a26 db 10,13,'             4.AC Berth              600/-$'  


a27 db 10,13,'         ******    Sundarban Express Tickets List     ******$'
a28 db 10,13,'             1.Shovan                260/-$'
a29 db 10,13,'             2.Shovan Chair          350/-$'
a30 db 10,13,'             3.First Class Seat      450/-$'
a31 db 10,13,'             4.First Class Chair     500/-$'
a32 db 10,13,'             5.First Class Berth     600/-$'
a33 db 10,13,'             4.AC Berth              700/-$'  

.code
main proc
    mov ax,@data
    mov ds,ax   
    
    mov ah,9 
    mov dx,offset a1
    int 21h   
    mov dx,offset a2
    int 21h
    mov dx,offset a3
    int 21h
    mov dx,offset a4
    int 21h
    mov dx,offset a5
    int 21h
    mov dx,offset a6
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h   
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    mov dx,offset a19
    int 21h
    mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    
    cmp bh,1
    je TrainList
    jmp Invalid
    
TrainList:    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,9 
    mov dx,offset a7
    int 21h   
    mov dx,offset a9
    int 21h
    mov dx,offset a10
    int 21h
    mov dx,offset a11
    int 21h    
    
    mov dx,offset a8
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    
    cmp bh,1
    je Karnaphuli_Express  
    cmp bh,2
    je Parabat_Express
    cmp bh,3
    je Sundarban_Express   
    
    jmp Invalid  
     
Karnaphuli_Express:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,9
    mov dx,offset a12
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    mov dx,offset a13
    int 21h   
    mov dx,offset a14
    int 21h
    mov dx,offset a15
    int 21h
    mov dx,offset a16
    int 21h
    mov dx,offset a17
    int 21h
    mov dx,offset a18
    int 21h   
    
    mov dx,offset a34
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    cmp bl,1
    je Two_Hundred_Thirty
    cmp bl,2
    je Two_Hundred_Thirty
    cmp bl,3
    je Two_Hundred_Thirty
    cmp bl,4
    je Two_Hundred_Thirty
    cmp bl,5
    je Two_Hundred_Thirty
    cmp bl,6
    je Two_Hundred_Thirty
    
    jmp Invalid

Parabat_Express:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,9
    mov dx,offset a20
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    mov dx,offset a21
    int 21h   
    mov dx,offset a22
    int 21h
    mov dx,offset a23
    int 21h
    mov dx,offset a24
    int 21h
    mov dx,offset a25
    int 21h
    mov dx,offset a26
    int 21h   
    
    mov dx,offset a34
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    cmp bl,1
    je Two_Hundred
    cmp bl,2
    je Two_Hundred
    cmp bl,3
    je Two_Hundred
    cmp bl,4
    je Two_Hundred
    cmp bl,5
    je Two_Hundred
    cmp bl,6
    je Two_Hundred
    
    jmp Invalid
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    mov dx,offset a38
    int 21h  
    
    mov ah,1
    int 21h
    mov bh,al
    cmp bh,1
    jmp Exit

Sundarban_Express:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,9
    mov dx,offset a27
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    mov dx,offset a28
    int 21h   
    mov dx,offset a29
    int 21h
    mov dx,offset a30
    int 21h
    mov dx,offset a31
    int 21h
    mov dx,offset a32
    int 21h
    mov dx,offset a33
    int 21h   
    
    mov dx,offset a34
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    cmp bl,1
    je Two_Hundred_Sixty
    cmp bl,2
    je Two_Hundred_Sixty
    cmp bl,3
    je Two_Hundred_Sixty
    cmp bl,4
    je Two_Hundred_Sixty
    cmp bl,5
    je Two_Hundred_Sixty
    cmp bl,6
    je Two_Hundred_Sixty
    
    jmp Invalid    
    
Two_Hundred_Thirty:
    mov bl,5
    mov dx, offset a35
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mul bl
    
    aam 
    
    mov cx,ax 
    add ch,48
    add cl,48
    
    mov dx, offset a37
    mov ah,9
    int 21h
    
    mov dl,cl
    int 21h
    mov dl, '0'
    int 21h
    
    mov dl,47
    int 21h
    mov dl,45
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov dx, offset a38
    mov ah,9
    int 21h
    
    mov dx, offset a39
    mov ah,9
    int 21h
    
    mov dx, offset a8
    mov ah,9
    int 21h  
    
    mov ah,1
    int 21h
    sub al,48
    
    cmp al,1
    je TrainList
    
    cmp al,2
    je Exit
    
    jmp Invalid
    
Two_Hundred:    
    
     mov bl,10
    mov dx, offset a35
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mul bl
    
    aam 
    
    mov cx,ax 
    add ch,48
    add cl,48
    
    mov dx, offset a37
    mov ah,9
    int 21h
    
    mov dl,cl
    int 21h
    mov dl, '0'
    int 21h
    
    mov dl,47
    int 21h
    mov dl,45
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov dx, offset a38
    mov ah,9
    int 21h
    
    mov dx, offset a39
    mov ah,9
    int 21h
    
    mov dx, offset a8
    mov ah,9
    int 21h  
    
    mov ah,1
    int 21h
    sub al,48
    
    cmp al,1
    je TrainList
    
    cmp al,2
    je Exit
    
    jmp Invalid
    
Two_Hundred_Sixty:    
    mov bl,20
    mov dx, offset a35
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mul bl
    
    aam 
    
    mov cx,ax 
    add ch,48
    add cl,48
    
    mov dx, offset a37
    mov ah,9
    int 21h
    
    mov dl,cl
    int 21h
    mov dl, '0'
    int 21h
    
    mov dl,47
    int 21h
    mov dl,45
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov dx, offset a38
    mov ah,9
    int 21h
    
    mov dx, offset a39
    mov ah,9
    int 21h
    
    mov dx, offset a8
    mov ah,9
    int 21h  
    
    mov ah,1
    int 21h
    sub al,48
    
    cmp al,1
    je TrainList
    
    cmp al,2
    je Exit
    
    jmp Invalid    
    
Invalid:

    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,9
    mov dx,offset a36
    int 21h
    jmp Exit
    
Exit:  
    mov ah,4ch
    int 21h
    main endp
    end main