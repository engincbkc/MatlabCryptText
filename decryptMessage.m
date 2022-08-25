function y=decryptMessage(message,enAlphabet,alphabet,number)

if nargin < 4
    disp("mesaj boş");
    message=''
    number=1;
    
else    
    for i=1:length(message)
        for j=1:length(alphabet)
            k=j;
             if k-number <1
                %a b c d e f g h ı i j k
                %k=3  || number=10  ||  len=12
                 %k-(length(alphabet)-number)
                k= k+(length(alphabet)-number)
            else
                k=k-number
            end
            if(strcmp(message(i),enAlphabet(j)))
               
                message(i)=alphabet(k);
                break;
            end
        end
    end
end
y=message;