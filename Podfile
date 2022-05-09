
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/stoneUoU/Hi-Swift-Repo.git'
platform :ios, '9.0'

target 'Hi-Swift-Union' do
    use_frameworks!
    inhibit_all_warnings!

    pod 'Hi-Home-Module', :path=>"../Hi-Home-Module"
    pod 'Hi-Personal-Module', :path=>"../Hi-Personal-Module"
    
    pod 'Hi-Kit-Module', :path=>"../Hi-Kit-Module"
    pod 'Hi-Helper-Module', :path=>"../Hi-Helper-Module"
    
#    pod 'Hi-Router-Module', :path=>"../Hi-Router-Module"
    pod 'Hi-Router-Module', '0.2.0'
    pod 'Hi-Network-Module', :path=>"../Hi-Network-Module"

    pod 'MBProgressHUD', '~> 1.1.0'
    pod 'SnapKit', '~> 4.0.0'
    pod 'IQKeyboardManager', '6.4.2'
    pod 'SwiftyJSON', '~> 4.0'
    pod 'Moya'
    pod "MJRefresh"
    pod "Kingfisher" #, '5.14.1'
    pod "HandyJSON"
    pod "Masonry"
    pod 'Reveal-SDK','~>4', :configurations => ['Debug']
    
end

# Swift调OC
# @interface HiTargetClass (Store)
# + (void)saveTarget:(NSString *)target;
# + (NSString *)getTarget;
# @end

# s.dependency 'Hi-Target-Module'
# import Hi_Target_Module'

# HiTargetClass.saveTarget("Hi-Swift-Union");
# HiTargetClass.getTarget()

# OC调OC
# @interface HiTargetClass (Store)
# + (void)saveTarget:(NSString *)target;
# + (NSString *)getTarget;
# @end

# s.dependency 'Hi-Target-Module'
# import <Hi_Target_Module/HiTargetHelper.h>

# [HiTargetClass saveTarget:@"Hi-Swift-Union"];
# [HiTargetClass getTarget];


# Swift调Swift
# open class HiTargetClass:NSObject {
#     public class func fetchTaget() {
#     }
# }

# s.dependency 'Hi-Target-Module'
# import Hi_Target_Module'

# HiTargetClass.fetchTarget();

# OC调Swift

