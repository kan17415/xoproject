
public class BoardOX {
    int scorePlayer1 = 0;
    int scorePlayer2 = 0;
    int tie = 0;
    int turn = 0;
    int[] storage = {0,0,0,0,0,0,0,0,0};
    boolean winYet = false;
    
    public static void main(String[] args) {
        BoardOX ab = new BoardOX();
        ab.putSymbol(0);
        ab.checkWin();
        ab.putSymbol(1);
        ab.checkWin();
        ab.putSymbol(2);
        ab.checkWin();
    }
    
    public void reBoard(){
        turn = 0;
    }
    public void putSymbol(int positionOfSymbol){
        turn++;
        System.out.println(turn);
        // default = 0 , Symbol X = 1 , Symbol 0 = 2
        if(turn%2==1){
            storage[positionOfSymbol]=1;
        }else{
            storage[positionOfSymbol]=2;
        }   
        System.out.println("storage "+storage[0]);
       
        checkWin();
    }
    public Boolean checkWin(){
        System.out.println(winYet);
        checkWinHorizon();
        checkWinVertical();
        checkWinDiagonal();
 
        
        return winYet;
    }
    public void checkWinHorizon(){

        if(storage[0]==storage[1]&&storage[1]==storage[2]&&storage[2]!=0){
            winYet = true;
        }else if(storage[3]==storage[4]&&storage[4]==storage[5]&&storage[5]!=0){
            winYet = true;
        }else if(storage[6]==storage[7]&&storage[7]==storage[8]&&storage[8]!=0){
            winYet = true;
        }
        
    }
    public void checkWinVertical(){
        if(storage[0]==storage[3]&&storage[3]==storage[6]&&storage[6]!=0){
            winYet = true;
        }else if(storage[1]==storage[4]&&storage[4]==storage[7]&&storage[7]!=0){
            winYet = true;
        }else if(storage[2]==storage[5]&&storage[5]==storage[8]&&storage[8]!=0){
            winYet = true;
        }
        
    }
    public void checkWinDiagonal(){
        if(storage[0]==storage[4]&&storage[4]==storage[8]&&storage[8]!=0){
            winYet = true;
        }else if(storage[2]==storage[4]&&storage[4]==storage[6]&&storage[6]!=0){
            winYet = true;
        }
    }
    public void checkForTie(){
        if(turn==9){
            tie++;
        }
    }

    private void AddScore() {
        if(turn%2==1){
            scorePlayer1++;
        }else{
            scorePlayer2++;
        }  
    }
}
