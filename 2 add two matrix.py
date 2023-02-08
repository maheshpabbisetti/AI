def addM(A,B):
    result=[ [0,0,0],[0,0,0],[0,0,0] ]
    #for rows
    for i in range(len(A)):
        #for columns
        for j in range(len(A[0])):
            result[i][j]=A[i][j] + B[i][j]

    for k in result:
        print(k)

    return 0
A=[ [1, 2, 3], [3, 4, 5], [6, 7, 8] ]

B=[ [5, 6, 7], [1, 2, 3], [5, 3, 8] ]

print("Result: ")
addM(A,B)
