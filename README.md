# Delect-Polygon-Disorder-Edges

一般在做模型减面的时候，我们可能会隔一条线删一条线，比如说这样用 “max保姆” 来操作 ↓

![image](https://github.com/DaiZiLing/Delect-Polygon-Disorder-Edges/blob/main/Image/0321_1.gif)

点一条线， “max保姆” 会自动帮我们识别它循环一圈的线，并且隔一个选一个，接着我们手动把这些线删了就完事了，看起来确实完美。

但是 “max保姆” 会出现一个问题，一旦模型布尔之后，它的边序号会变乱，即使是 “max保姆” 和3dsmax自带的Editpoly里的 “环形” 都没用了！

![image](https://github.com/DaiZiLing/Delect-Polygon-Disorder-Edges/blob/main/Image/0321_2.gif)

![image](https://github.com/DaiZiLing/Delect-Polygon-Disorder-Edges/blob/main/Image/QQ截图20220321104026.png)

蛋疼啊！点了没用，因为序号乱了，这该怎么减面呢，总不可能一条一条边选吧 = =

于是我整了个小玩具，即使是Edges序号乱了的情况下，也可以减面，妙极了！

![image](https://github.com/DaiZiLing/Delect-Polygon-Disorder-Edges/blob/main/Image/0321_3.gif)

使用方法：选中你要减面的一堆边，按 “选中边”，再按 “删除边”，完事 ~ 间隔也可以调 ~
