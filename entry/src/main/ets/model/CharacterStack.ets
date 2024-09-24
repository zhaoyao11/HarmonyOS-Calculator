//操作符栈
export class CharacterStack{
  characterstack:string[];

  constructor() {
    this.characterstack = [];
  }

  push(item:string){
    this.characterstack.push(item);
  }

  pop(){
     return this.characterstack.pop()
  }

  length(){
    return this.characterstack.length;
  }

  peek(){
    return this.characterstack[this.characterstack.length-1]
  }

  isEmpty(){
    return this.characterstack.length ? false : true
  }

  clear(){
    this.characterstack = [];
  }

}