// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewManager.h
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AFNetworking/AFNetworking.h>
#import <AFNetworking/AFNetworking.h>
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>

/**
 *  是否开启https SSL 验证
 *  @return YES为开启，NO为关闭
 */


/**
 *  SSL 证书名称，仅支持cer格式。“app.bishe.com.cer”,则填“app.bishe.com”
 */


//请求成功的回调block
//: typedef void(^ResponseSuccess)(id responseObject);
typedef void(^ResponseSuccess)(id responseObject);

//请求失败的回调block
//: typedef void(^ResponseFailed)(id responseObject ,NSError *error);
typedef void(^ResponseFailed)(id responseObject ,NSError *error);

//文件下载的成功回调block
//: typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);
typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);

//文件下载的失败回调block
//: typedef void(^DownloadFailed)( NSError *error);
typedef void(^DownloadFailed)( NSError *error);

//文件上传下载的进度block
//: typedef void (^HttpProgress)(NSProgress *progress);
typedef void (^HttpProgress)(NSProgress *progress);


//: @interface ZCHttpManager : NSObject
@interface ViewManager : NSObject

/**
 管理者单例
 */
//: + (instancetype)sharedManager;
+ (instancetype)keyManager;

//: @property (nonatomic, copy) NSString *lastLang;
@property (nonatomic, copy) NSString *lastLang;


/**
 get请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)viewFailed:(NSString *)urlStr
            //: params:(NSDictionary *)params
            disable:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            params:(BOOL)isShow
           //: success:(ResponseSuccess)success
           status:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed;
            allow:(ResponseFailed)failed;

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)manager: (NSString *)urlStr
            //: params: (NSDictionary *)params
            resrush: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            name: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         progress: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       welt: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           more: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed;
            use: (ResponseFailed)failed;




/**
 post请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */
//: + (void)postWithUrl: (NSString *)urlStr
+ (void)bubbleFind: (NSString *)urlStr
             //: params: (NSDictionary *)params
             failed: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             text: (BOOL)isShow
            //: success: (ResponseSuccess)success
            occurrence: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             lightRemove: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)user: (NSString *)urlStr
             //: params: (NSDictionary *)params
             signaling: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             message: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          content: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        data: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            par: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             selected: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)at: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           disappearOf: (NSString *)checksum
              //: nonce: (NSString *)nonce
              input: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            objectPost: (NSString *)CurTime
             //: params: (NSDictionary *)params
             of: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            layer: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             container: (ResponseFailed)failed;

/**
 * 上传文件
 *  @param URL 请求地址
 *  @param parameters 请求参数
 *  @param name              文件对应服务器上的字段
 *  @param filePath     文件本地的沙盒路径
 *  @param progress     上传进度信息
 *  @param success       请求成功的回调
 *  @param failed    请求失败的回调
 */
//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)way:(NSString *)URL
               //: parameters:(id)parameters
               allOrNone:(id)parameters
                     //: name:(NSString *)name
                     volition_strong:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 refreshcy:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 empty:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  observe:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed;
                   tip:(ResponseFailed)failed;


/**
 * 上传单/多张图片
 * 注意：多张图片需要接口支持，有的服务接口只支持数组的第一个数据
 * @param URL  请求地址
 * @param parameters 请求参数
 * @param images 图片数组
 * @param progress 上传进度信息
 * @param success 请求成功的回调
 * @param failed 请求失败的回调
 */
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)full:(NSString *)URL
                 //: parameters:(id)parameters
                 r:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     title:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   shared:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    container:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     user:(ResponseFailed)failed;



/**
 *  上传单/多张图片
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param name       图片对应服务器上的字段
 *  @param images     图片数组
 *  @param fileNames  图片文件名数组, 可以为nil, 数组内的文件名默认为当前日期时间"yyyyMMddHHmmss"
 *  @param imageScale 图片文件压缩比 范围 (0.f ~ 1.f)
 *  @param imageType  图片文件的类型,例:png、jpg(默认类型)....
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failed    请求失败的回调
 *
 */

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)ting:(NSString *)URL
                 //: parameters:(id)parameters
                 tin:(id)parameters
                       //: name:(NSString *)name
                       light_strong:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     color:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  length:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 advancementShow:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  image:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   user:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    addFrameResponseSuccess:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     media:(ResponseFailed)failed;



/// 新增
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)title:(NSString *)URL
                 //: parameters:(id)parameters
                 with:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     change:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 searched:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   successCell:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    message:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     counteract:(ResponseFailed)failed;




//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)tingFailed:(NSString *)URL
                 //: parameters:(id)parameters
                 progressMore:(id)parameters
                     //: images:(NSData *)videoData
                     team:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 questionDoingFailed:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   bubble:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    language:(ResponseSuccess)success
                    //: failed:(ResponseFailed)failed;
                    pin:(ResponseFailed)failed;


/**
 *  下载文件
 *
 *  @param URL      请求地址
 *  @param fileDir  文件存储目录(默认存储目录为Download)
 *  @param progress 文件下载的进度信息
 *  @param success  下载成功的回调(回调参数filePath:文件的路径)
 *  @param failed  下载失败的回调
 *
 *   返回NSURLSessionDownloadTask实例，可用于暂停继续，暂停调用suspend方法，开始下载调用resume方法
 */
//: + (void)downloadWithURL:(NSString *)URL
+ (void)system:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                tingTextView:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               player:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                colorDoing:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed;
                 standard:(ResponseFailed)failed;

//: @end
@end