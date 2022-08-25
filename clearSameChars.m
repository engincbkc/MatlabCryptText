function y=clearSameChars(chars)

if length(chars)>1 
i=1;
j=i+1;
    while 1
        if(strcmp(chars(i),chars(j)))
            chars(j)='';
        else
            j=j+1;
        end
        if(j>length(chars))
            i=i+1;
            j=i+1;
        end
        if(i >= length(chars))
            break;
        end
    end
end
 y=chars;
