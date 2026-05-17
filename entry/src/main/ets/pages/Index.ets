import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'hello world';
  @State mes: string = 'good'
  build() {
    Row(){
      Column(){
        Text(this.mes)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button(){
          Text('Next')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .background('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Next' button.`)
          let uiContext: UIContext = this.getUIContext();
          let router = uiContext.getRouter();
          router.pushUrl({url:'pages/Second'}).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err:BusinessError) => {
            console.error(`Failed to jump to the second page. code is ${err.code},message is ${err.message}`)
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}