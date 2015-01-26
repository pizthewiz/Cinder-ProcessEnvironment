//
//  Cinder-ProcessEnvironment.h
//  Cinder-ProcessEnvironment
//
//  Created by Jean-Pierre Mouilleseaux on 26 Jan 2015.
//  Copyright 2015 Chorded Constructions. All rights reserved.
//

#pragma once

#if !defined(CINDER_MAC)
  #error Target platform unsupported by Cinder-ProcessEnvironment
#endif

#import "cinder/Cinder.h"

namespace Cinder { namespace ProcessEnvironment {

std::map<std::string, std::string> Get();

}}
