//入口指令，入口表示当前页面可以显示
import router from '@ohos.router'


@Entry
//组件指令，前端是组件式开发，基本结构
@Component
struct Start{
  //显示页面写在build里面，只能有一个元素相当于一个页面
  build() {
  //使用专业布局方法,竖向Column，横向Row，统一使用Flex
    Flex(){
      //排列两个启动页图片，滑动启动页---Swiper组件
      Swiper(){
        //滑动图片,需要图片与Image组件大小符合---objectFit
        Image($r("app.media.start1"))
          .width('100%')
          .height(1000)
          .backgroundImageSize(ImageSize.Contain)

        Image($r("app.media.start2"))
          .width('100%')
          .height(1000)
          // .objectFit(ImageFit.Contain)
          .backgroundImageSize(ImageSize.Contain)
          .onClick(()=>{
            //开始页面不需要返回
            router.replaceUrl({url:"pages/login"})
          })
      }
    }
    .margin({top:-250})
  }
}