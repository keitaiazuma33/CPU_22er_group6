###ファイル構成
<アセンブリ>
`assembler.cpp`に実装
fibを0,1の機械語に変換

<シミュレータ>
fibのasmをc++で計算
ストールなども含めた実行命令数を出力
hit,miss率も出す

`sim_0204.cpp`; １つにまとめたファイル

makeでコンパイル可能
-fをつけて実行するとfast_modeに
-gだとキャッシュなどの統計情報が出る
-dでデバッグモード

Ack関数結果
````
2 1024
5 8189
6 8188
hit miss 0 0
clean dirty 0 0
実行命令数 402260398
duration = 3.79298sec.
````

**注意点**
````
void sld_to_ppm(){
    string filename ("contest.dat"); //asm_3
    vector<string> lines;
    string line;
    string s1 = "/Users/maimai/my-3A/cpu-simu/sim_contest.ppm";
````
という部分はstring s1の名前の変更が必要
入力ファイルcontest.dat(ppmファイルをdatファイルに変換したもの）を手元に置いてお使いください

レジスタの使い方
````
x0...常に0を格納
x1...戻りアドレスを格納
x2...スタックポインタ
x3...ヒープポインタ
x5-x23...汎用レジスタ
x24...定数を一時的に格納するレジスタ
````
＜FPUのエミュレート＞
TARGET  = fpu_sim
# (4)コンパイル対象のソースコード
SRCS = fsqrt_sim.cpp
SRCS += simu_fmul.cpp
SRCS += simu_fadd.cpp 
SRCS += fpu_common.cpp 

分割コンパイルについて
メインファイル：
`sim_cache_way2.cpp`

以下サブ関数・ファイル

`sim_cache_index.cpp`: 定数宣言・キャッシュ部分のヒット率・ミス率
→sim_cache_data.cppを真似して実装；class cacheの作成
`sim_cache_index.hpp`: vector配列の定義
`op_type.cpp`: 
`sub_func.cpp`:　サブ関数；
`reg.cpp`:　reg関数；

###RISC-V命令について
疑似命令も一般的なものは処理できる

###次にやること
fibのt4をメモリに格納；simulator?
IOフォルダ

**デバッグ機能**
-d: デバッグモード　
-dの後に
print mem: メモリの中身をprint
`*がついたアセンブリの行でbreak（一番最初の*)`
**以下を実装したい**
- `-r`: レイトレ専用モード(以下を内部的に実行するので、**課題プログラムを動かす際には必ずこれを指定してください**)
  - 初期化段階でメモリのサイズを調整
  - 初期化段階で受信バッファを`contest.bin`で初期化
  - 実行終了時に`.ppm`ファイルを自動で出力 (`./simulator/out`ディレクトリに出力)
<memo>
コマンドラインから入力を受け取ってデバッグモード
````
argv[1]==-dなら　一命令ずつ実行
````
 - `contest.bin`は`contest.sld`(配布されたもの)をbig endianで変換したもの (`./simulator/data`ディレクトリに格納してください)
↓`cpuex2021_4`より拝借
#### server（予定）

最上位のディレクトリで`./server.sh`を起動するか、`./simulator`ディレクトリで`./server`を実行するかのいずれかにより、サーバが起動します。`./test.sh`で明示的にポート番号を指定するか、`./simulator`ディレクトリで`./sim+`を実行するかのいずれかにより、このサーバと通信できます。

サーバは以下のようなコマンド入力を受け付けます。

| コマンド        | 機能                                                         |
| --------------- | ------------------------------------------------------------ |
| quit            | 終了 (qに省略可能)                                           |
| send N          | Nという値を(big endianで)32文字のテキストとして送信<br />補足: Nが通常の10進数なら整数として解釈, `0f`から始まる場合は浮動小数点数として解釈, `0b`から始まる場合は2進数として解釈 |
| send (option) F | **[非推奨]** `./data`ディレクトリのFという名前のファイルの中身を送信<br />オプション: `-f`(テキストファイル), `-b`(バイナリファイル)<br />補足: シミュレータ側で`--preload`オプションを指定する方が高速かつ動作が安定しているので、そちらを使うことを推奨します。 |
| info            | 受信したデータを表示                                         |
| out             | 受信したデータをファイルに出力 (オプションや使い方はシミュレータと同様) |

###参考資料
	https://github.com/jameslzhu/riscv-card/blob/master/riscv-card.pdf
https://github.com/liewecmays/cpuex2021-4_simulator
https://daeudaeu.com/c_oct_bin_nega/#i-17
###テスト結果
####assembler
fib_2.txtから入力
asm_result.txtに出力
````
addi a2 zero 10
00000000010100000000011000010011
addi t4 zero 1
00000000000000000000111010010011
sw a2 0 a1
00000000110001011010000000100011
lw t3 0 a1
00000000000001011010111000000011
blt t4 t3 12
00000001110011101100011001100011
addi t4 t3 0
00000000000011100000111010010011
jal zero 40 
00010100000000000000000001101111
addi t4 zero 1
00000000000000000000111010010011
addi t5 zero 1
00000000000000000000111100010011
addi t0 zero 2
00000000000100000000001010010011
bge t0 t3 24
00000001110000101101001101100011
addi t6 t4 0
00000000000011101000111110010011
add t4 t4 t5
00000001111011101000111010110011
addi t5 t6 0
00000000000011111000111100010011
addi t0 t0 1
00000000000000101000001010010011
jal zero 20 
10101000000000000000000001101111
addi a0 t4 0
00000000000011101000010100010011

````
####simulator
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
