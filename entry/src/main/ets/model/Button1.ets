import { text } from '@kit.ArkGraphics2D'
import {calculate_achieve, roundToDecimal} from '../pages/Index'
import {SwitchMiddleToEnd} from '../pages/Index'
//import {roundToDecimal} from '../pages/Index'

@Component

export struct Button1{
  //计算式
  @Link cal:string
  //计算结果
  @Link result:string|undefined|number
  //是否已经按下等号的标记
  @Consume flag:boolean
  //按钮透明度设置
  @Link button_opacity_son:number
  //1为测试数据
  num:string = '1'
  //按钮颜色
  buttonColor:number = 0x333333
  //文本颜色
  textColor:number = Color.White
  //文本大小
  textSize:number = 28

  build() {
   Column(){
     Text(`${this.num}`)
       .fontColor(this.textColor)
       .fontWeight(FontWeight.Medium)
       .fontSize(this.textSize)
   }.justifyContent(FlexAlign.Center)
   //按下按钮时，按钮的透明度改变
   .onTouch((Event:TouchEvent)=>{
     if(Event.type==TouchType.Down){
       this.button_opacity_son = 0.5
     }
     if(Event.type==TouchType.Up){
       this.button_opacity_son = 1;
     }
   })
    .width(80)
    .height(80)
    .opacity(this.button_opacity_son)
    .alignItems(HorizontalAlign.Center)
    .backgroundColor(this.buttonColor)
    .borderRadius(40)
    .onClick(()=>{
      //’AC‘功能的实现
      if(this.num=='AC'){
        this.flag = true;
        this.cal='';
        this.result = '0';
        return
      }
      else if(this.num=='='){
        //如果第一次按下等号就显示等号
        if(this.flag == true) {
          this.flag = false;
          let EndExpression =SwitchMiddleToEnd(this.cal);
          EndExpression.print_queue()
          this.result = calculate_achieve(EndExpression);
        }
        //否则不显示等号
        else {
          let EndExpression = SwitchMiddleToEnd(this.cal);
          EndExpression.print_queue()
          this.result = calculate_achieve(EndExpression);
          this.result = String(roundToDecimal(this.result));
        }
      }
      //将按钮所对应的字符加到计算式后
      else {
        this.cal += this.num;
      }

    })
}
}