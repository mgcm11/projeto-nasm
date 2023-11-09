section .text
    global _start           ; precisa ser adicionado para o gerador de excultavel saiba onde começa 

    _start:
        mov edx,len         ;tamanho do texto len(length-> comprimento)
        mov ecx,msg         ;mensagen de texto prara exibir
        mov edx,1           ;descritor de arquivo 
        mov eax,4           ;chamada para escrever o texto na tela 
        int,0x80            ;chama o terminal para exibir o texto

        section .data                       ;seçao de dados
        msg db 'hello, word!'               ;msg que deve aparecer
        len equ $ - msg                     ;obtem a quantidade de caracteres da msg