class ContainerDoc {
  ///Widgets:Container
  ///constructor params:
  ///{
  /// alignment : 类型AlignmentGeometry，跟android里RelativeLayout里的align系列属性相似，控制子view的对齐位置
  /// padding : 类型EdgeInsetsGeometry，跟android一样表示内边距
  /// margin : 类型EdgeInsetsGeometry，跟android一样表示外边距
  /// color : 类型Color，背景色
  /// decoration : 绘制在child后面的装饰（相当于背景，可以设置颜色，图片，形状等属性），设置了decoration的话，就不能设置color属性，否则会报错，此时应该在decoration中进行颜色的设置。
  /// foregroundDecoration ： 同decoration一样，不过这个是表示前景色，跟android里FrameLayout里的foreground属性一样
  /// child ：类型Widget，子View
  /// width : 类型double，widget的宽度
  /// height ：类型double，widget的高度
  /// transform ：类型Matrix4，设置container的变换矩阵
  /// constraints ：子View的约束条件，最大最小宽高
  ///}
}