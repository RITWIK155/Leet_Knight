class Solution:
    def checkDivisibility(self, n: int) -> bool:
        sum = 0
        product = 1
        # print("str(n)", str(n))
        # Convert the integer to a string to iterate over its digits
        for i in str(n):
            i2 = int(i)
            # print(i2)
            sum = sum+i2
            # print("sum",sum)
            product = product * i2
            # print("product",product)
        # if (sum + product) == n: # getting failed when n = 10 so: 
        #     return True
        # else:
        #     return False
        total = sum + product
        # return n % total == 0
        if n % total == 0:
            return True
        else:
            return False
        