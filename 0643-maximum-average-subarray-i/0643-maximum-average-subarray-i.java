class Solution {
    public double findMaxAverage(int[] nums, int k) {
        int n = nums.length;
        double ans = -Double.MAX_VALUE;;
        if (n < k) {
            double sum = 0;
            for (int val : nums) {
                sum += val;
            }
            return sum / n;
        }

        int[] prefSum = new int[n];
        prefSum[0] = nums[0];
        for (int i = 1; i < n ;i++) {
            prefSum[i] = prefSum[i - 1] + nums[i];
        }

        int i = 0;
        int j = i + k - 1;
        while (i < n && j < n) {
            double avg = (prefSum[j] - (i > 0 ? prefSum[i - 1] : 0.0)) / k;
            ans = Math.max(ans, avg);
            i++;
            j++;
        }
        return ans;
    }
}