export default class AriticleItem{
  icon:Resource
  mytxt:string
  recommend:number
  author:string

  constructor(icon:Resource,mytxt:string,recommend:number,author:string) {
    this.icon=icon
    this.mytxt=mytxt
    this.author=author
    this.recommend=recommend
  }
}