# (1)コンパイラ
CC  = g++
# (2)コンパイルオプション
CFLAGS    = -std=c++11 -g -O3
# (3)実行ファイル名
TARGET  = sim
# (4)コンパイル対象のソースコード
SRCS = sim_with_float.cpp #sim_float_io.cpp #simu_withoutエミュレート.cpp ##0204#実行したいファイル名をここに
SRCS += simu_itof.cpp
SRCS += simu_ftoi.cpp
# SRCS = simu_fsqrt2.cpp
SRCS += fdiv_fmul.cpp #ok version#simu_fmul.cpp
SRCS += simu_fadd.cpp 
SRCS += fsub_sim.cpp 
SRCS += simu_fsqrt2.cpp
SRCS += fpu_common.cpp 



# (5)オブジェクトファイル名p
OBJS    = $(SRCS:.cpp=.o)
# OBJS += 
# OBJS = $(SRCS).o
# (6)インクルードファイルのあるディレクトリパス
# INCDIR  = -I../inc

# (7)ライブラリファイルのあるディレクトリパス
# LIBDIR  = 

# (8)追加するライブラリファイル
# LIBS    = 

# (9)ターゲットファイル生成
$(TARGET): $(OBJS) #$(OBJS)
	$(CC) -o $@ $^ 
# $< $^

# (10)オブジェクトファイル生成
# $(OBJS): $(SRCS)
%.o: %.cpp
	$(CC) $(CFLAGS) -c $<
# SRCS１つに対してOBJS１つ
# OBJS全てに依存する形でTARGETの生成
# * : *.cpp
	

# (11)"make all"で make cleanとmakeを同時に実施。
all: clean $(OBJS) $(TARGET)
# (12).oファイル、実行ファイル、.dファイルを削除




# (3)実行ファイル名
TARGET2  = fpu
# (4)コンパイル対象のソースコード
SRCS2 = simu_fsqrt2.cpp
# SRCS2 = fsub_sim.cpp
# SRCS2 += simu_fmul.cpp
# SRCS2 = simu_itof.cpp
# SRCS2 = simu_ftoi.cpp
# SRCS2 = simu_fadd.cpp 
# SRCS2 = fsub_sim.cpp 
# SRCS2 = fdiv_fmul.cpp
SRCS2 += fpu_common.cpp 
OBJS2    = $(SRCS2:.cpp=.o)
$(TARGET2): $(OBJS2) #$(OBJS)
	$(CC) -o $@ $^ 
%.o: %.cpp
	$(CC) $(CFLAGS) -c $<

clean:
	-rm -f $(OBJS) $(TARGET) *.d
	-rm -f $(OBJS2) $(TARGET2) *.d
# CC := g++
# OUTPUT_OPTION := -I./ -std=c++20 -Wall -O3 -mtune=native -march=native

# # default: sim sim+ sim2

# # all: clean sim sim+ sim2 server fpu_test

# # sim: params.hpp common.hpp unit.hpp fpu.hpp sim.hpp sim.cpp
# # 	$(CC) $(OUTPUT_OPTION) -o $@ sim.cpp -lboost_program_options

# sim_cache_way2: sim_cache_index.hpp op_type.hpp sub_func.hpp reg.hpp const.hpp sim_cache_way2.cpp
	# $(CC) $(OUTPUT_OPTION) -o $@ $^
# server_thread.o: server_thread.c
# 	# $(CC) $(CFLAGS) -c -DTHREAD server_thread.c

# clean:
# 	rm -f op_type sub_func reg *.o

# clean-info:
# 	rm -f info/*.md info/*.csv

# clean-out:
# 	rm -f out/*.ppm out/*.bin out/*.txt

# clean-all: clean clean-info clean-out
