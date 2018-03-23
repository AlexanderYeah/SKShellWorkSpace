
# 是一个解释器  告诉系统用哪一种shell 去解释器来执行
#!/bin/bash 
echo "helloworld";


# 2 变量的定义在 命名和等号之间不能有空格
my_name='this is bash';
# 2.1 使用 $  和 {} 对变量进行引用
echo ${my_name};

# 2.2 只读变量
readonly your_name="James";
your_name="tom";

# 2.3 删除变量 unset variable_name,不可以删除只读变量
unset your_name;

# 2.4 变量类型 运行shell的时候 会存在三种变量 
# 局部变量  局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
# 环境变量  所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。
# shell变量 shell变量是由shell程序设置的特殊变量。shell变量中有一部分是环境变量，有一部分是局部变量，这些变量保证了shell的正常运行


# 3 字符串 单引号中不能出现单引号 双引号中可以有变量，可以出现转义字符
str="this is string";
str2="nice,str1\"${str}\""
echo ${str2};

# 3.1 拼接字符串
str3="str,"$str2"!";
echo $str3;

# 3.2 获取字符串的长度 #获取长度
echo ${#str};

# 3.3 提取子字符串 输入开始的索引以及结束的索引
echo ${str:1:4};

# 3.4 查找子字符串的位置 使用 `` 反引号 判断
string="runoob is a great company"
echo `expr index "$string" is`  # 输出 8








