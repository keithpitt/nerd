//
//  main.m
//  Nerd
//
//  Created by Keith Pitt on 24/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifdef FRANK
#include "FrankServer.h"
static FrankServer *sFrankServer;
#endif

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
#ifdef FRANK
    sFrankServer = [[FrankServer alloc] initWithDefaultBundle];
    [sFrankServer startServer];
#endif
    
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
