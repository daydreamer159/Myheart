import Goods from "./Goods"
export default class GoodsCategory{
  classifyId:number
  classifyName:string
  courseList:Array<Goods>
  mycolor:Color=Color.Yellow
  constructor(classifyId:number,classifyName:string,
    courseList:Array<Goods>,mycolor:Color) {
    this.classifyId=classifyId
    this.classifyName=classifyName
    this.courseList=courseList
    this.mycolor=mycolor
  }
}
//接口不用构造函数
// export default interface GoodsCategory{
//   classifyId:number
//   classifyName:string
//   courseList:Array<Goods>
//   mycolor:Color
// }