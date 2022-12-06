###ファイル構成
<シミュレータ>
メインファイル：
sim_cache_way2.cpp

以下サブ関数・ファイル
````
sim_cache_index.cpp: 定数宣言・キャッシュ部分のヒット率・ミス率
→sim_cache_data.cppを真似して実装；class cacheの作成
sim_cache_index.hpp: vector配列の定義
op_type.cpp: 
sub_func.cpp:　サブ関数；
reg.cpp:　reg関数；

````
###テスト結果
fib_2.txt（load, storeつきフィボナッチ）
hit miss 1 0
よりok
````
PC 0
PC 0
PC 4
PC 8
PC 12
PC 16
PC 20
PC 24
PC 28
PC 28
PC 32
PC 36
PC 40
PC 40
PC 44
PC 48
PC 52
PC 56
PC 60
PC 64
PC 64
PC 68
PC 68
fileclose
line  li a2,10              # int n=10;
whileループ pc 0
# 10 0 0
line  li t4,1
whileループ pc 4
# 1 0 0
line  sw a2, 0(a1)
whileループ pc 8
rs1 rs2 11 10
addr,tag,index_,offset 0 0 0 0
次へ
次へ
flag 1
# 10 11 10
line  lw t3, 0(a1)
whileループ pc 12
addr,tag,index_,offset 0 0 0 0
# 10 11 0
line  blt t4,t3,L1          # if (1<n) goto L1;
whileループ pc 16
# 1 10
pc28
line  li t4,1
whileループ pc 28
# 1 0 0
line  li t5,1           # int fibPrev=1;
whileループ pc 32
# 1 0 0
line  li t0,2           # int i=2;
whileループ pc 36
# 2 0 0
line  bge t0,t3,L3          # if (i>=n) goto L3;
whileループ pc 40
# 2 10
pc44
line  mv t6,t4          # int temp=fib;
whileループ pc 44
# 1 1 0
line  add t4,t4,t5              # fib+=fibPrev;
whileループ pc 48
# 2 1 1
line  mv t5,t6          # fibPrev=temp;
whileループ pc 52
# 1 1 0
line  addi t0,t0,1              # i++
whileループ pc 56
# 3 2 0
line  j L2
whileループ pc 60
jal pc 40
line  bge t0,t3,L3          # if (i>=n) goto L3;
whileループ pc 40
# 3 10
pc44
line  mv t6,t4          # int temp=fib;
whileループ pc 44
# 2 2 0
line  add t4,t4,t5              # fib+=fibPrev;
whileループ pc 48
# 3 2 1
line  mv t5,t6          # fibPrev=temp;
whileループ pc 52
# 2 2 0
line  addi t0,t0,1              # i++
whileループ pc 56
# 4 3 0
line  j L2
whileループ pc 60
jal pc 40
line  bge t0,t3,L3          # if (i>=n) goto L3;
whileループ pc 40
# 4 10
pc44
line  mv t6,t4          # int temp=fib;
whileループ pc 44
# 3 3 0
line  add t4,t4,t5              # fib+=fibPrev;
whileループ pc 48
# 5 3 2
line  mv t5,t6          # fibPrev=temp;
whileループ pc 52
# 3 3 0
line  addi t0,t0,1              # i++
whileループ pc 56
# 5 4 0
line  j L2
whileループ pc 60
jal pc 40
line  bge t0,t3,L3          # if (i>=n) goto L3;
whileループ pc 40
# 5 10
pc44
line  mv t6,t4          # int temp=fib;
whileループ pc 44
# 5 5 0
line  add t4,t4,t5              # fib+=fibPrev;
whileループ pc 48
# 8 5 3
line  mv t5,t6          # fibPrev=temp;
whileループ pc 52
# 5 5 0
line  addi t0,t0,1              # i++
whileループ pc 56
# 6 5 0
line  j L2
whileループ pc 60
jal pc 40
line  bge t0,t3,L3          # if (i>=n) goto L3;
whileループ pc 40
# 6 10
pc44
line  mv t6,t4          # int temp=fib;
whileループ pc 44
# 8 8 0
line  add t4,t4,t5              # fib+=fibPrev;
whileループ pc 48
# 13 8 5
line  mv t5,t6          # fibPrev=temp;
whileループ pc 52
# 8 8 0
line  addi t0,t0,1              # i++
whileループ pc 56
# 7 6 0
line  j L2
whileループ pc 60
jal pc 40
line  bge t0,t3,L3          # if (i>=n) goto L3;
whileループ pc 40
# 7 10
pc44
line  mv t6,t4          # int temp=fib;
whileループ pc 44
# 13 13 0
line  add t4,t4,t5              # fib+=fibPrev;
whileループ pc 48
# 21 13 8
line  mv t5,t6          # fibPrev=temp;
whileループ pc 52
# 13 13 0
line  addi t0,t0,1              # i++
whileループ pc 56
# 8 7 0
line  j L2
whileループ pc 60
jal pc 40
line  bge t0,t3,L3          # if (i>=n) goto L3;
whileループ pc 40
# 8 10
pc44
line  mv t6,t4          # int temp=fib;
whileループ pc 44
# 21 21 0
line  add t4,t4,t5              # fib+=fibPrev;
whileループ pc 48
# 34 21 13
line  mv t5,t6          # fibPrev=temp;
whileループ pc 52
# 21 21 0
line  addi t0,t0,1              # i++
whileループ pc 56
# 9 8 0
line  j L2
whileループ pc 60
jal pc 40
line  bge t0,t3,L3          # if (i>=n) goto L3;
whileループ pc 40
# 9 10
pc44
line  mv t6,t4          # int temp=fib;
whileループ pc 44
# 34 34 0
line  add t4,t4,t5              # fib+=fibPrev;
whileループ pc 48
# 55 34 21
line  mv t5,t6          # fibPrev=temp;
whileループ pc 52
# 34 34 0
line  addi t0,t0,1              # i++
whileループ pc 56
# 10 9 0
line  j L2
whileループ pc 60
jal pc 40
line  bge t0,t3,L3          # if (i>=n) goto L3;
whileループ pc 40
# 10 10
pc64
line  mv a0,t4
whileループ pc 64
# 55 55 0
hit miss 1 0
duration = 0.001636sec.
````
<memo>
コマンドラインから入力を受け取ってデバッグモード
````
argv[1]==-dなら　一命令ずつ実行
````