import java.util.*;
class q2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int arr[] = new int[n-1];
        for(int i=0;i<n-1;i++){arr[i] = sc.nextInt();}
        Arrays.sort(arr);
        for(int i=0;i<arr.length;i++){
            if(arr[i] != i+1){
                System.out.println(i+1);
                return;
            }
        }
        System.out.println(n);
    }
}
