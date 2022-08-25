function y=makeAlphabet(key,alphabet)

if nargin == 1
    alphabet = 'abcçdefgğhıijklmnoöprsştuüvyzqx';
    
elseif nargin <1
    alphabet = 'abcçdefgğhıijklmnoöprsştuüvyzqx';
    key='';
end
key=clearSameChars(key);
for(i=1:length(key))
    for(j=1:length(alphabet))
        if(strcmp(alphabet(j),key(i)))
           alphabet(j) = '';
           break
        end
    end
end
y=strcat(key,alphabet);