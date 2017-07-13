# Complete the function below.
import itertools 

def  findMaximum(a, m):
    #print(a)
    #print(m)
    res = -1
    for x in itertools.permutations(a, m):
        temp = float('inf')
        for y in itertools.permutations(x, 2):
            l = list(y)
            if temp > abs(l[0]-l[1]):
                temp = abs(l[0]-l[1])
        if res < temp:
            res = temp
    return int(res)



'''/* '''      

# Complete the function below.
import itertools 

def  findMaximum(a, m):
    #print(a)
    #print(m)
    res = -1
    for x in itertools.combinations(a, m):
        temp = float('inf')
        for y in itertools.combinations(x, 2):
            l = list(y)
            if temp > abs(l[0]-l[1]):
                temp = abs(l[0]-l[1])
        if res < temp:
            res = temp
    return int(res)


'''/* '''      

# Complete the function below.
import itertools 

def  findMaximum(a, m):
    a.sort()
    res = -1
    for x in itertools.combinations(a, m):
        l = list(x)
        temp = float('inf')
        for i in range(m-1):
            if temp > l[i+1]-l[i]:
                temp = l[i+1]-l[i]
            if temp < res:
                break
        if res < temp:
            res = temp
    return int(res)
