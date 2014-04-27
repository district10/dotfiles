这里有一些脚本
===========



---

### gat-trans 系列用于转换汉字到 gat 键码

- gat-trans.sh

```
➜  scripts git:(master) ✗ ./gat-trans.sh example4.txt 
早饭时隔壁桌的男人边吃边对着前面的空椅子说话，谈笑风生，不时起身伸过勺子送去食物，喂空气，好像哑剧。
[tehre][tecin][es][temht][teaco][teumx][i][etid][u][teirh][taq][teirh][er][tik][tsu][trh][i][ette][tetua][trx][tar][etmk]，[teiri][terem][tetit][ec]，[x][es][tlx][etxc][teitx][tic][teuts][trx][tgq][trr][teose][tra]，[tesuk][ette][etao]，[txa][teron][terru][etab]。
我示意同桌看看，同桌说，神神叨叨，估计吃药的时候忘记开灯了。
[q][eteu][tsk][thr][teumx][tsl][tsl]，[thr][teumx][tar]，[etti][etti][texar][texar]，[etwj][tsr][taq][teisa][i][es][tenor][tetxm][etlk][tnu][teork][n]。
我哈哈大笑，两人边欣赏那男人的表演边评头论足，不亦乐乎。可能太过喧闹惊动了对方，他居然放下餐具径直冲我们走来。
[q][etyv][etyv][g][terem]，[tnr][u][teirh][tekca][teili][tsh][etid][u][i][tao][tpv][teirh][tps][etia][thk][teete]，[x][etjr][tpd][tearh]。[ea][ei][teret][tic][telle][tereo][etmq][til][n][er][tir]，[p][tqn][tro][etih][tur][teali][etrk][etuj][etso][toq][q][y][teise][el]。
```

- gat-trans2.sh

```
➜  scripts git:(master) ✗ ./gat-trans2.sh "你的就是我的，我的还是我的" 
{你too}{的i}{就ev}{是a}{我q}{的i}，{我q}{的i}{还tcx}{是a}{我q}{的i}
```


- gat-trans3.sh 

```
➜  bigrams git:(master) ✗ head -3 news.txt         
1	中国	53185	4.69339339612	53185
2	美国	31840	5.19176188171	85025
3	发展	26535	7.14269896701	111560
➜  bigrams git:(master) ✗ head -3 news.txt | awk '{print $2}' 
中国
美国
发展
➜  bigrams git:(master) ✗ head -3 news.txt | awk '{print $2}' > demo.txt
➜  scripts git:(master) ✗ ./gat-trans3.sh  demo.txt
中国 [m][r]
美国 [tli][r]
发展 [ex][tsm]
```

- gat-trans-pretty.sh

```
➜  scripts git:(master) ✗ ./gat-trans-pretty.sh     example4.txt
早饭时隔壁桌的男人边吃边对着前面的空椅子说话，谈笑风生，不时起身伸过勺子送去食物，喂空气，好像哑剧。
[5hre][5cin][2s][5mht][5aco][5umx][i][4id][u][5irh][3aq][5irh][2r][3ik][3su][3rh][i][4te][5tua][3rx][3ar][4mk]，[5iri][5rem][5tit][2c]，[x][2s][3lx][4xc][5itx][3ic][5uts][3rx][3gq][3rr][5ose][3ra]，[5suk][4te][4ao]，[3xa][5ron][5rru][4ab]。
我示意同桌看看，同桌说，神神叨叨，估计吃药的时候忘记开灯了。
[q][4eu][3sk][3hr][5umx][3sl][3sl]，[3hr][5umx][3ar]，[4ti][4ti][5xar][5xar]，[4wj][3sr][3aq][5isa][i][2s][5nor][5txm][4lk][3nu][5ork][n]。
我哈哈大笑，两人边欣赏那男人的表演边评头论足，不亦乐乎。可能太过喧闹惊动了对方，他居然放下餐具径直冲我们走来。
[q][4yv][4yv][g][5rem]，[3nr][u][5irh][5kca][5ili][3sh][4id][u][i][3ao][3pv][5irh][3ps][4ia][3hk][5ete]，[x][4jr][3pd][5arh]。[2a][2i][5ret][3ic][5lle][5reo][4mq][3il][n][2r][3ir]，[p][3qn][3ro][4ih][3ur][5ali][4rk][4uj][4so][3oq][q][y][5ise][2l]。
```

- gat-trans-pretty2.sh

```
➜  scripts git:(master) ✗ ./gat-trans-pretty2.sh "我跟你开玩笑干嘛, gat 输入法完虐拼音五笔"
{我q}{跟4pt}{你3oo}{开3nu}{玩5inx}{笑5rem}{干4mr}{嘛5iea},gat{输3jv}{入3ls}{法2b}{完4ci}{虐5nax}{拼5oas}{音3lj}{五4mi}{笔4iy}
```

---

### dvpe2* 系列用于把dvpe转化成dvp，qwerty

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

### keyvalue2quail.sh 

- From Key-Value Table to Emacs Quail El Package

```
➜  scripts git:(master) ✗ head -n 3 data/gat-key-value-6000.dvp.txt                                                   
u 的
o 一
a 是
➜  scripts git:(master) ✗ head -n 3 data/gat-key-value-6000.dvp.txt | ./keyvalue2quail.sh -- your-own-emacs-package.el
➜  scripts git:(master) ✗ cat your-own-emacs-package.el 
(quail-define-package
 "gat-input-method" "Chinese" "Gat_Zh_")

(quail-define-rules
 ("u" ?的)
 ("o" ?一)
 ("a" ?是)
)
(privide 'your-own-emacs-package)
```




---
注：

- 示例文档来自[吃饭 | 空肚皮][kongdupi]




[kongdupi]: http://jianshu.io/p/41b28730a8c4
