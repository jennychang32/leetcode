class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        nums
        num_sorted=sorted(nums)
        left = 0
        right = len(num_sorted)-1
        
        while left < right:
            if num_sorted[left]+num_sorted[right]<target:
                left+=1
            elif num_sorted[left]+num_sorted[right]>target:
                right-=1
            else:
                break
        
        res=[]
        for i in range(0,len(nums)):
            if nums[i]==num_sorted[left]:
                res.append(i)
            elif nums[i]==num_sorted[right]:
                res.append(i)
        return res
            
