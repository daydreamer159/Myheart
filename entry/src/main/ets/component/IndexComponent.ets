//首页组件，在调用时显示，默认不显示（调试时需要显示）
import MyCategory from '../data/MyCategory'
import category from "../mocjs/category_data"
import news from "../mocjs/news"
import MyNews from '../data/MyNews'
import { it } from '@ohos/hypium'
import recommend from '../mocjs/recommend'
import jinqi from '../mocjs/jinqi'


@Component
export default struct IndexComponent{

  build(){
    Scroll(){
      Flex({direction:FlexDirection.Column}){
        //轮播图
        Swiper(){
          Image($r("app.media.slider1"))
            .width("100%")
            .height(200)
            .objectFit(ImageFit.Contain)
          Image($r("app.media.slider2"))
            .width("100%")
            .height(200)
            .objectFit(ImageFit.Contain)
          Image($r("app.media.slider3"))
            .width("100%")
            .height(200)
            .objectFit(ImageFit.Contain)
        }
        //分类导航组件，wrap表示超出边界自动换行
        Flex({wrap:FlexWrap.Wrap}){
          //使用arkts的循环
          ForEach(category,(item:MyCategory)=>{
            Column(){
              Image(item.icon)
                .width(75)
                .height(75)
                .objectFit(ImageFit.Contain)
                .aspectRatio(1)//等比例放缩
                .margin({bottom:10})
                .borderRadius(150)
              Text(item.mytxt)
            }
            .margin({right:10,left:5,bottom:20})
          })
        }
        //咨询类信息
        Flex({wrap:FlexWrap.Wrap}){
          ForEach(news,(item:MyNews)=>{
            //在外层一个容器
            Column(){
              //里面两个横向框
              Row(){
                Image(item.icon)
                  .width(50)
                  .height(50)
                //第二个容器竖向
                Column(){
                  Text(item.mytxt)
                    .fontWeight(FontWeight.Bold)
                    .fontSize(18)
                  Text(item.mysubtitle)
                }
              }
              .margin({left:15,bottom:10})
            }
          })
        }
        .width("90%")
        .border({width:1,style:BorderStyle.Solid,color:Color.Red})
        .margin({left:10})
        .padding({top:10,bottom:10})
        .borderRadius(5)

        //定义一个热门
        Flex({direction:FlexDirection.Row,
          justifyContent:FlexAlign.SpaceBetween,
          alignItems:ItemAlign.Center}){
          Image($r("app.media.hot"))
            .width(40)
            .height(40)
          Text($r("app.string.hot_text"))
            .fontSize(20)
            .fontColor(Color.White)
        }
        .backgroundColor(Color.Red)
        .margin({top:20})
        .padding(10)
        //捐助项目推荐列表
        Flex({wrap:FlexWrap.Wrap}){
          ForEach(recommend,(item:MyNews)=>{
            Column(){
              Image(item.icon)
                .width(100)
                .height(100)
                .margin({bottom:10})
              Text(item.mytxt)
                .width("40%")
            }
            .margin({left:20,right:10,bottom:5,top:10})
            .height(180)
            .border({width:1,color:Color.Red,style:BorderStyle.Dotted})
            .padding(10)
          })
        }
        //定义一个近期
        Flex({direction:FlexDirection.Row,
          justifyContent:FlexAlign.SpaceBetween,
          alignItems:ItemAlign.Center}){
          Image($r("app.media.hot"))
            .width(40)
            .height(40)
          Text($r("app.string.jinqi_text"))
            .fontSize(20)
            .fontColor(Color.White)
        }
        .backgroundColor(Color.Yellow)
        .margin({top:20})
        .padding(10)
        //捐助项目推荐列表
        Flex({wrap:FlexWrap.Wrap}){
          ForEach(jinqi,(item:MyNews)=>{
            Column(){
              Image(item.icon)
                .width(100)
                .height(100)
                .margin({bottom:10})
              Text(item.mytxt)
                .width("40%")
            }
            .margin({left:20,right:10,bottom:5,top:10})
            .height(180)
            .border({width:1,color:Color.Red,style:BorderStyle.Dotted})
            .padding(10)
          })
        }
      }
    }

  }
}