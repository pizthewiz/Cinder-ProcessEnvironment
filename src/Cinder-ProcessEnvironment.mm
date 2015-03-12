//
//  Cinder-ProcessEnvironment.mm
//  Cinder-ProcessEnvironment
//
//  Created by Jean-Pierre Mouilleseaux on 26 Jan 2015.
//  Copyright 2015 Chorded Constructions. All rights reserved.
//

#import "Cinder-ProcessEnvironment.h"
#include "cinder/cocoa/CinderCocoa.h"
#if defined(__OBJC__)
    #import <Cocoa/Cocoa.h>
#endif

namespace Cinder { namespace ProcessEnvironment {

std::map<std::string, std::string> GetEnvironment() {
    __block std::map<std::string, std::string> result;
    NSDictionary* environment = [[NSProcessInfo processInfo] environment];
    [environment enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL* stop) {
        if (![key isKindOfClass:[NSString class]] || ![obj isKindOfClass:[NSString class]]) {
            return;
        }

        std::string k = ci::cocoa::convertNsString(key);
        std::string v = ci::cocoa::convertNsString(obj);
        result[k] = v;
    }];

    return result;
}

}}
