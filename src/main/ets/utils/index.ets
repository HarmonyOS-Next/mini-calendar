// 设计稿宽度
import display from '@ohos.display'
import deviceInfo from '@ohos.deviceInfo'
const designWidth = 375
// 物理像素
const devicePhysics = display.getDefaultDisplaySync().width

export const vp2vp = (originSize: number) => {
  // useSize =  deviceWidth / designWidth * measureSize
  // 只有 手机 才需要
  if (deviceInfo.deviceType !== 'tablet') {
    return px2vp(devicePhysics) / designWidth * originSize
  }
  return originSize
}