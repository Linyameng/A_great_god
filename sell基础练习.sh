#例子一
#使用readonly命令可以将变量定义为只读变量，只读变量的值不能被改变，下面的例子会报错：
#！/bin/bash
myUrl="http://www.w3cschool.cc"
readonly myUrl
myUrl="http://www.runoob.com"
#结果：/bin/sh: NAME: This variable is read only

#例子二
#使用定义过的变量，只要在变量前加美元符号即可，如：
your_name="qinjx"
echo $your_name
echo ${your_name}
#变量名外面的花括号是可选的，加不加都行，加括号是为了帮助编辑器识别变量的边界，比如下面的情况：
for skill in Add Coffe Action Java; do
	echo "I am good at ${skill}Script"
done
#如果不加花括号，编辑器会把$skillScript当成变量，（其值为空）

#例子三
#定义的变量是可以重复定义的 如：
yi="yi"
echo $yi
yi="er"
echo $er

#例子四
#使用unset删除变量
unset yi
#变量被删除之后不能在使用，unset命令不能删除常量


#实例五
#传参实例 
touch instance.sh
#文件输入一下内容：
echo "执行的文件名：$0"
echo "第一个参数为：$1"
echo "第二个参数为：$2"
echo "第三个参数为：$3"

#为脚本设置可执行权限，并输出结果:
$chmod +x ./instance.sh
$./instance.sh 1 2 3
#Shell 传递参数实例！
#执行的文件名：./test.sh
#第一个参数为：1
#第二个参数为：2
#第三个参数为：3


#另外，还有几个特殊字符用来处理参数
#$!	后台运行的最后一个进程的ID号
#$#	传递到脚本的参数个数
#$*	以一个单字符串显示所有向脚本传递的参数。
#如"$*"用「"」括起来的情况、以"$1 $2 … $n"的形式输出所有参数。

echo "传递第一个参数：$1"
echo "传参个数为：$#"
echo "传递的参数作为一个字符串显示：$*"
$chmod XXX.sh
$./XXX.sh
#Shell 传递参数实例！
#第一个参数为：1
#参数个数为：3
#传递的参数作为一个字符串显示：1 2 






