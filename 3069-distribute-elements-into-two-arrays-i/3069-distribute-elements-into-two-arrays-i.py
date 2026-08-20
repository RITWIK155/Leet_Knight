class Solution:
    def resultArray(self, nums: List[int]) -> List[int]:
        # 1. Initialize as lists
        arr1 = [nums[0]]
        arr2 = [nums[1]]
        # 2. Iterate starting from the 3rd element (index 2)
        # for i in range(2, len(nums)): OR
        for i in nums[2:]:
            # 3. Compare the last elements of arr1 and arr2
            if arr1[-1] > arr2[-1]:
                arr1.append(i)
            else:
                arr2.append(i)
        return arr1+arr2
