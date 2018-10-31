function hash = FNV( msg, type )

% FNV is for 32 bit int

if(nargin<2), type='fnv1a'; end

FNV_PRIME_32 = 16777619;
FNV_OFFSET_32 = 2166136261;
hash = FNV_OFFSET_32;

switch(type)
    case 'fnv1a'
        for i = 1: length(msg)
           hash =  bitxor(hash,double(msg(i)));
           hash =  mod((hash * FNV_PRIME_32),2^31-1); 
       end
    case 'fnv1'
        for i = 1: length(msg)
           hash =  mod((hash * FNV_PRIME_32),2^31-1);
           hash =  bitxor(hash,double(msg(i)));
       end
    otherwise
        error('FNV:inputs','unknown type');
end







end

