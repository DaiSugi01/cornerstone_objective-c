//
//  main.m
//  Working
//
//  Created by 杉原大貴 on 2021/02/23.
//

#import <Foundation/Foundation.h>
 

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int arr[10];
        for (int i = 0; i < 10; i++) {
            arr[i] = i * 2;
            printf("%d -> ", arr[i]);
        }
        printf("\n");
        
        int *p = arr;
        p += 4;
        printf("%d", *p);

    }
    return 0;
}
