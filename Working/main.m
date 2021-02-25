//
//  main.m
//  Working
//
//  Created by 杉原大貴 on 2021/02/23.
//

#import <Foundation/Foundation.h>
 

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        int arr[10];
//        for (int i = 0; i < 10; i++) {
//            arr[i] = i;
//        }
//
//        int *p = arr;
//
//        for (int i = 0; i < 10; i++) {
//            NSLog(@"%d", *p);
//            p++;
//        }
        
        int x = 10;
        
        int *pt = &x;
//        pt = 1;
        NSLog(@"%p", pt);
        NSLog(@"%d", *pt);
        NSLog(@"%p", &x);
        NSLog(@"%d", x);
        
        int a = 10;
        NSInteger b = a;
    }
    return 0;
}
