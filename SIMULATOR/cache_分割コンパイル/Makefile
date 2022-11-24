# (1)コンパイラ
CC  = g++
# (2)コンパイルオプション
CFLAGS    = -std=c++11
# (3)実行ファイル名
TARGET  = sim
# (4)コンパイル対象のソースコード
SRCS = sim_cache_way2.cpp
SRCS += sim_cache_index.cpp 
# SRCS += op_type.cpp 
SRCS += sub_func.cpp 
SRCS += reg.cpp 
# SRCS += const.hpp 
# (5)オブジェクトファイル名
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
clean:
	-rm -f $(OBJS) $(TARGET) *.d

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
