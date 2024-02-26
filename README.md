# Next 版本

https://github.com/HarmonyOS-Next/interview-handbook-project/tree/next/commons/calendar

# @ohmos/calendar

- 一个简易的日历组件，支持点击当前日期，支持切换月份，支持签到显示
- 一个简易的手机端适配函数，可以支持手机侧的尺寸比例缩放

## 安装

```bash
ohpm install @ohmos/calendar
```

## 使用 `@ohmos/calendar` 组件

```typescript
import { MiniCalendar } from '@ohmos/calendar'
```

```typescript
MiniCalendar({
  // Prop 当前日期
  currentDate: '2023-12-9',
  // Link 选中的日期 selectedDays: string[] = [ '2023-12-9' ]
  selectedDays: $selectedDays,
  // 选中文字设置
  selectedText: '已签到',
  // 切换月份触发函数
  onChangeMonth: (date: string) => {
    // date  ===>  2023-12
  },
  // 点击日期触发函数
  onClickDate: (date: string) => {
    // date  ===>  2023-12-10
  }
})
```

## 使用 vp2vp 函数

```typescript
import { vp2vp } from '@ohmos/calendar'
```

```typescript
// default 360 基准设备
// 使用 vp2vp 可以等比例缩放不同设备下的vp值

Text()
  .width(vp2vp(100))
```

## 仓库

https://github.com/HarmonyOS-Next/mini-calendar

欢迎提 issue 
