//
//  Case.swift
//  algorithm
//
//  Created by iwalben on 2020/6/27.
//  Copyright © 2020 WM. All rights reserved.
//

import Cocoa

class Case: NSObject {

}


// MARK:0-链表反转
class Solution_0 {
    func reverseList(_ head: ListNode?) -> String? {
        var curr = head ,prev : ListNode? = nil
        while curr != nil {
            let temp = curr?.next
            curr?.next = prev
            prev = curr
            curr = temp
        }
        
        var endstring = ""
        while prev != nil {
            endstring = endstring + String(prev!.val)
            prev = prev?.next
        }
        return endstring
    }
    
    
    func creatNodeList(list:[Int]!) -> ListNode? {
        var pre = ListNode(list[0]) ,head = pre , j = 0
        for val in list {
            if j == 0 {
                j += 1
                continue
            }
            let temp = ListNode(val)
            pre.next = temp
            pre = temp
            j += 1
        }
        return head
    }
}


// MARK:1-环形链表判断链表是否有环
class Solution_1 {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head , fast = head?.next?.next
        guard slow?.next != nil || slow?.next != nil else { return false }
        while slow !== fast {
            guard fast != nil || fast?.next != nil else { return false }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return true
    }
    
    func creatNodeList(list:[Int]!,n:Int) -> ListNode? {
        var pre = ListNode(list[0]) , rear = pre ,head = pre ,forward : ListNode! ,j = 0
        for i in list {
            if j == 0{
                j += 1
                continue
            }
            let temp = ListNode(i)
            pre.next = temp
            pre = temp
            if j == n {
                forward = temp
            }
            j += 1
        }
        
        while rear.next != nil {
            rear = rear.next!
        }

        if n >= 0 {
            rear.next = forward
        }
        return head
    }
}

public class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


// MARK:2-约瑟夫环（圆圈中最后剩下的数字）-（链表解法）
class Solution_2 {
    func lastRemaining(_ n: Int, _ m: Int) -> Int {
        if n<2 || m<2 {
            return n-1
        }
        let head = creatCycleList(n:n)
        var cur = head
        var pre : Node?
        var k = 1
        while cur!.next !== cur {
            if k == m{
                pre!.next = cur!.next
                cur = cur!.next
                k = 1
            }else{
                pre = cur
                cur = cur!.next
                k += 1
            }
            
        }
        return cur!.num
    }

    //构造链表
    func creatCycleList(n:Int) -> Node?{
        let head = Node(num: 0)
        var next = head
        for i in 1..<n {
            let temp = Node(num: i)
            temp.num = i
            next.next = temp
            next = temp
        }
        next.next = head
        return head
    }
}


class Node {
    var next :Node?
    var num:Int = 0
    init(num:Int) {
        self.num = num
    }
}

// MARK:3-翻转字符串里的单词 (栈解法)
class Solution_3 {
    func reverseWords(_ s: String) -> String {
        let strings:[String] = s.components(separatedBy: " ")
        let s = Stack(elems: strings, top: strings.count)
        var ends : String?
        while s.top > 0 {
            let e = s.elems![s.top-1]
            if e == "" || e == " " {
            }else{
                if ends == nil {
                    ends = (ends ?? "") + e
                }else{
                    ends = (ends ?? "") + " " + e
                }
            }
            s.top -= 1
        }
        return ends ?? ""
    }
}

//构造栈
class Stack {
    var elems:[String]?
    var top:Int
    init(elems:[String]?, top:Int) {
        self.elems = elems
        self.top = top
    }
}

// MARK:4-爬楼梯（动态规划解法）
//斐波拉契（楼梯级数问题（上到n级台阶，每次最多能跨2步，至少跨1步，有多少种走法？））
class Solution_4 {
    func fibonacci(_ n:Int) -> Int {
        var f = 0 , g = 1 , m = n
        while m > 0 {
            m -= 1
            g = g + f
            f = g - f
        }
        return g
    }
}

