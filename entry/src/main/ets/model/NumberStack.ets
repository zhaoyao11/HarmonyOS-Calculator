//数字栈
export class NumberStack{
    numberstack:string[];

  constructor() {
    this.numberstack = [];
  }

  push(item:string){
    this.numberstack.push(item);
  }

  pop(){
   return this.numberstack.pop()
  }

  peek(){
    return this.numberstack[this.numberstack.length-1]
  }

  isEmpty(){
    return this.numberstack.length ? false : true
  }

  clear(){
    this.numberstack = [];
  }

}