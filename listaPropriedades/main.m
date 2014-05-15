//
//  main.m
//  listaPropriedades
//
//  Created by ALS on 07/05/14.
//  Copyright (c) 2014 Cotrim. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, char *argv[])
{

    NSMutableArray *stocks = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *stock1 = [[NSMutableDictionary alloc] init];
    [stock1 setObject:@"MLC" forKey:@"abreviacao"];
    [stock1 setObject:@"Michel Carmo Lopes" forKey:@"nome"];
    [stock1 setObject:[NSNumber numberWithInt:25] forKey:@"idade"];

    NSMutableDictionary *stock2 = [[NSMutableDictionary alloc] init];
    [stock2 setObject:@"AAJ" forKey:@"abreviacao"];
    [stock2 setObject:@"Alberto Amaronha Jr" forKey:@"nome"];
    [stock2 setObject:[NSNumber numberWithInt:26] forKey:@"idade"];

    [stocks addObject:stock1];
    [stocks addObject:stock2];
    
    [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
    
    NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
    
    for(NSDictionary * item in stockList){
        NSLog(@"%@",item);
    }
    
    return NSApplicationMain(argc, (const char **)argv);
}
