#import "DDPair.h"

typedef id (^DDPairBlockImp)(int pick);

DDPair DDMakePair(id a, id b)
{
    return [[^(int pick) {
        if (pick == 1) {
            return a;
        } else {
            return b;
        }
    } copy] autorelease];
}

id DDPairFirst(DDPair pair)
{
    DDPairBlockImp impl = pair;
    return impl(1);
}

id DDPairSecond(DDPair pair)
{
    DDPairBlockImp impl = pair;
    return impl(2);
}
