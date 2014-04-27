这里有一些脚本
===========

---
### gat-trans系列用于转换汉字到gat键码

- gat-trans

```
➜  scripts git:(master) ✗ ./gat-trans.sh example4.txt 
早饭时隔壁桌的男人边吃边对着前面的空椅子说话，谈笑风生，不时起身伸过勺子送去食物，喂空气，好像哑剧。
[tehre][tecin][es][temht][teaco][teumx][i][etid][u][teirh][taq][teirh][er][tik][tsu][trh][i][ette][tetua][trx][tar][etmk]，[teiri][terem][tetit][ec]，[x][es][tlx][etxc][teitx][tic][teuts][trx][tgq][trr][teose][tra]，[tesuk][ette][etao]，[txa][teron][terru][etab]。
我示意同桌看看，同桌说，神神叨叨，估计吃药的时候忘记开灯了。
[q][eteu][tsk][thr][teumx][tsl][tsl]，[thr][teumx][tar]，[etti][etti][texar][texar]，[etwj][tsr][taq][teisa][i][es][tenor][tetxm][etlk][tnu][teork][n]。
我哈哈大笑，两人边欣赏那男人的表演边评头论足，不亦乐乎。可能太过喧闹惊动了对方，他居然放下餐具径直冲我们走来。
[q][etyv][etyv][g][terem]，[tnr][u][teirh][tekca][teili][tsh][etid][u][i][tao][tpv][teirh][tps][etia][thk][teete]，[x][etjr][tpd][tearh]。[ea][ei][teret][tic][telle][tereo][etmq][til][n][er][tir]，[p][tqn][tro][etih][tur][teali][etrk][etuj][etso][toq][q][y][teise][el]。
```

- gat-trans2

```
➜  scripts git:(master) ✗ ./gat-trans2.sh "你的就是我的，我的还是我的" 
{你too}{的i}{就ev}{是a}{我q}{的i}，{我q}{的i}{还tcx}{是a}{我q}{的i}
```




---
### dvpe2 系列用于把dvpe转化成dvp，qwerty

- 即：

```
➜  scripts git:(master) ✗ ./gat-trans.sh example4.txt | ./dvpe2dvp.sh
早饭时隔壁桌的男人边吃边对着前面的空椅子说话，谈笑风生，不时起身伸过勺子送去食物，喂空气，好像哑剧。
[tekhe][tecun][es][temkt][teaco][teimx][u][etud][i][teuhk][taq][teuhk][eh][tup][tsi][thk][u][ette][tetia][thx][tah][etmp]，[teuhu][tehem][tetut][ec]，[x][es][trx][etxc][teutx][tuc][teits][thx][tgq][thh][teose][tha]，[tesip][ette][etao]，[txa][tehon][tehhi][etab]。
我示意同桌看看，同桌说，神神叨叨，估计吃药的时候忘记开灯了。
[q][etei][tsp][tkh][teimx][tsr][tsr]，[tkh][teimx][tah]，[ettu][ettu][texah][texah]，[etwj][tsh][taq][teusa][u][es][tenoh][tetxm][etrp][tni][teohp][n]。
我哈哈大笑，两人边欣赏那男人的表演边评头论足，不亦乐乎。可能太过喧闹惊动了对方，他居然放下餐具径直冲我们走来。
[q][etyv][etyv][g][tehem]，[tnh][i][teuhk][tepca][teuru][tsk][etud][i][u][tao][tpv][teuhk][tps][etua][tkp][teete]，[x][etjh][tpd][teahk]。[ea][eu][tehet][tuc][terre][teheo][etmq][tur][n][eh][tuh]，[p][tqn][tho][etuk][tih][tearu][ethp][etij][etso][toq][q][y][teuse][er]。
```

```
➜  scripts git:(master) ✗ ./gat-trans2.sh "你的就是我的，我的还是我的" | ./dvpe2dvp.sh
{你too}{的u}{就ev}{是a}{我q}{的u}，{我q}{的u}{还tcx}{是a}{我q}{的u}

```




---
注：

- 示例文档来自[吃饭 | 空肚皮][kongdupi]




[kongdupi]: http://jianshu.io/p/41b28730a8c4
