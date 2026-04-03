class Solution {
public:
    bool isPerfectSquare(int n){
        int root = sqrt(n);
        return root * root == n;  // Simplified return
    }
    
    bool judgeSquareSum(int c) {
        int x = 0;
        int y = c;
        
        while(x <= y){
            if(isPerfectSquare(x) && isPerfectSquare(y))
                return true;
            else if(!isPerfectSquare(y)){
                y = (int)sqrt(y) * (int)sqrt(y);
                x = c - y; 
            }
            else {  // Fixed: else doesn't take condition
                x = ((int)sqrt(x) + 1) * ((int)sqrt(x) + 1);  // Fixed: added semicolon
                y = c - x;  // Fixed: x is already squared, don't multiply again
            }
        }
        return false;
    }
};
