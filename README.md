# FNV implementation in Matlab

The basic information regarding FNV is provided here (http://www.isthe.com/chongo/tech/comp/fnv/). Both FNV1 and FNV1a is implemented here.


    type = 'fnv1a';
    msg = 'hi';

    hash = FNV(msg,type)

    > 26867967
