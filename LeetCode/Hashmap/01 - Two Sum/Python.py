def TwoSum(nums, target):
    result = []
    for i in range(len(nums)):
        for j in range(len(nums)):
            if i != j and nums[i] + nums[j] == target:
                result.append(i)
                result.append(j)
                return result


result = TwoSum([6, 5, 7, 8, 9, 3], 10)
print(result)
