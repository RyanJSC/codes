"=========================================================
"配置人：何雨帆
"email：heyufan93919@sina.com／heyufan93919@icloud.com
"=========================================================
set number			 						"显示行号
set nocompatible							"关闭兼容模式
syntax enable								"语法高亮
colorscheme Solarized						"设置vim颜色主题 
set backspace=indent,eol,start				"设置backspace按键为增强模式，解决无法删除的问题
set tabstop=4								"设置tab按键为4个空格
"========================================================
"加载pathogen管理插件
"========================================================
execute pathogen#infect()


"=========================================================
"创建程序文件时自动添加文件基础格式
"=========================================================
autocmd BufNewFile *.html,*.py,*.c exec":call SetTitle()"

func SetTitle()
	if &filetype == 'html'
		call setline(1,"<!DOCTYPE html>")
		call setline(2,"<html>")
		call setline(3,"	<head>")
		call setline(4,"		<meta charset=\"UTF-8\">")
		call setline(5,"		<title>Title of document</title>")
		call setline(6,"	</head>")
		call setline(7,"	<body>")
		call setline(8,"	</body>")
		call setline(9,"</html>")
	elseif &filetype == 'python'
		call setline(1,"#!/usr/bin/env python")
		call setline(2,"#-*-coding:utf-8-*-")
	elseif &filetype == 'c'
		call setline(1,"#include<stdio.h>")
		call setline(2,"int main(int argc,char *argv[])")
		call setline(3,"{")
		call setline(4,"	return 0;")
		call setline(5,"}")
	endif
endfunc
"========================================================
"插件配置
"========================================================
"pydiction配置
filetype plugin on
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
let g:pydiction_menu_height = 3			

"========================================================
"定义自用的快捷键
"========================================================
nmap <silent><F1> :NERDTree<CR>				"F1打开NERDTree
