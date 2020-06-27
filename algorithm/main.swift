//
//  main.swift
//  algorithm
//
//  Created by iwalben on 2020/6/27.
//  Copyright © 2020 WM. All rights reserved.
//

import Foundation

//0-链表反转
//https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof/



//1-环形链表判断链表是否有环
//https://leetcode-cn.com/problems/linked-list-cycle/
let s1 = Solution_1()
let list = s1.creatNodeList(list: [3,2,0,-4],n: 1)
print("1-环形链表判断链表是否有环 " + String(s1.hasCycle(list)))

//2-约瑟夫环（圆圈中最后剩下的数字）
//https://leetcode-cn.com/problems/yuan-quan-zhong-zui-hou-sheng-xia-de-shu-zi-lcof/
let s2 = Solution_2()
print("2-约瑟夫环（圆圈中最后剩下的数字）" + String(s2.lastRemaining(5, 1)))


//3-翻转字符串里的单词 (栈解法)
//https://leetcode-cn.com/problems/reverse-words-in-a-string/
let teststring = "  the      sky       is blue     "
let s3 = Solution_3()
print("3-翻转字符串里的单词 " + s3.reverseWords(teststring))


//4-爬楼梯（动态规划解法）
//https://leetcode-cn.com/problems/climbing-stairs/
let s4 = Solution_4()
print("4-爬楼梯 " + String(s4.fibonacci(3)))







