import ArticleItem from '../data/ArticleItem'

@Component
export default struct MyArticle{
  @Prop article:ArticleItem
  build() {
    Flex({direction:FlexDirection.Column,
      justifyContent:FlexAlign.Center}){
      Row(){
        Image(this.article.icon)
          .width("100")
          .height("100")
        Flex({direction:FlexDirection.Column}){
          Flex({direction:FlexDirection.Row,
            justifyContent:FlexAlign.SpaceBetween}){
            Text(this.article.mytxt)
              .fontSize(24)
            Text("作者:"+this.article.author)
              .fontSize(18)
          }
              .width(220)
              .margin({bottom:20})
            Flex({direction:FlexDirection.Row}){
              Text("推荐指数:")
                .fontSize(18)
                .margin({bottom:-30})
              ForEach(new Array<number>(this.article.recommend).fill(1),(item:number)=>{
                Image($r("app.media.star_1"))
                  .width(30)
              })
              ForEach(new Array<number>(5-this.article.recommend).fill(1),(item:number)=>{
                Image($r("app.media.star_2"))
                  .width(30)
              })
            }
          }
        }
        .height(120)
        .width("90%")
        .margin({bottom:10,top:10})
        .border({width:{bottom:2}})
      }
  }
}