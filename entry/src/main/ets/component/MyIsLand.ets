import Goods from '../data/Goods'
import cart from '../mocjs/carts'
import CarSiderBar from './CarSiderBar'
import articles from '../mocjs/articals'
import ArticleItem from '../data/ArticleItem'
import MyArticle from './MyArticle'
import AnalyseComponent from './AnalyseComponent'

@Entry
@Component
export default struct MyIsLand {
  @State moneys:string=""
  @State objects:string=""
  private right_scroller:Scroller=new Scroller()
  private article_scroller:Scroller=new Scroller()
  build() {
    //显示文章
    Flex({direction:FlexDirection.Column}){
      //分隔条
      Text("关于捐助的精品文章推荐")
        .fontSize(20)
        .backgroundColor(Color.Yellow)
        .padding(10)
        .width("100%")
        .height(70)
      //文章
      List({scroller:this.article_scroller}){
        ForEach(articles,(item:ArticleItem)=>{
          MyArticle({article:item})
        })
      }
      //分隔条
      Text("用户感兴趣的捐赠项目")
        .fontSize(20)
        .backgroundColor(Color.Yellow)
        .padding(10)
        .width("100%")
        .height(70)
      //捐赠内容
      List({scroller:this.right_scroller}){
        ForEach(cart,(newitem:Goods)=>{
          ListItem(){
            CarSiderBar({
              myitem:newitem,
              sub_moneys:this.moneys,
              sub_objects:this.objects,
            })
          }
        })
      }
      //增加一个捐赠的条
      AnalyseComponent({
        moneys:this.moneys,
        objects:this.objects
      })
    }
  }
}