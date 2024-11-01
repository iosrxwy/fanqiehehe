#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// TG频道：https://t.me/iosrxwy/

%hook SSAccountInfo
- (_Bool)isVip {
    return YES;
}
%end

%hook SSVipInfo
// VIP剩余时间
- (id)leftTime {
    return [NSString stringWithFormat:@"%.0lf", 2534308005 - [[NSDate date] timeIntervalSince1970]];
}

// VIP到期时间,20990113
- (id)expireTime {
    return @"4071916800";
}

- (id)isVip {
    return @"1";
}
%end

// 解锁番茄畅听等
%hook BUSplashAdView
- (void)setSlot:(id)arg1 {
}
%end

%hook SSUser
- (bool)isVip {
    return 1;
}
%end

// 移除阅读页面插入广告
%hook BDReaderViewController
- (id)tryGetInsertedVC:(id)arg1 fromPageContext:(id)arg2 toPageContext:(id)arg3 {
    return nil;
}
%end

%hook SSAdReaderCommonEntranceView
- (id)initWithFrame:(struct CGRect)arg1 {
    id view = %orig;
    [view setAlpha:0];
    [view setHidden:YES];
    return view;
}
%end
