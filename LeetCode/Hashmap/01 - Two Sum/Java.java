import java.util.ArrayList;
import java.util.List;

public class Main {
    public static int[] TwoSum(int[] nums, int target) {
        List<Integer> result = new ArrayList<Integer>();
        for (int i = 0; i < nums.length; i++) {
            for (int j = 0; j < nums.length; j++) {
                if (i != j && nums[i] + nums[j] == target) {
                    result.add(i);
                    result.add(j);
                    i = nums.length;
                    j = i;
                }
            }
        }
        return result.stream().mapToInt(i -> i).toArray();
    }
    public static void main(String[] args) {
        TwoSum(new int[]{ 6, 5, 7, 8, 9, 3 }, 10);
        System.out.println();
        }
    }
