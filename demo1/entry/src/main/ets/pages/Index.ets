@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State times: number = 0
  @State imageWidth: number = 30
  build() {
    Row() {
      Column() {
        Button(`点 ${this.times} 击次`)
          .backgroundColor('#36D')
          .onClick(() => this.times++)
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            this.message = 'i am winson'
          })
        TextInput({text: this.imageWidth.toFixed(0)})
          .width(300)
          .backgroundColor('#36D')
          .type(InputType.Number)
          .onChange(value =>{
            if (value.length > 0) { this.imageWidth = parseInt(value) }
          })
        Text($r('app.string.module_desc'))
          .lineHeight(200)
          .fontSize(22)
          .fontWeight(FontWeight.Bold)

        Image($r('app.media.icon'))
          .width(this.imageWidth)
          .height(100)
          .borderRadius(12)
          .interpolation(ImageInterpolation.High)
        // Image('https://rollingstance-dev.oss-cn-shenzhen.aliyuncs.com/2023/1030/C2228036FAD2045133D2E6A9ECDEF8A0.png')
          // .width(200)
          // .width('50%')

      }
      .width('100%')
    }
    .height('100%')
  }
}