private final double DEFAULTWERT = 0;
public double x (y x){
    ResultSet rs = projectattribut.getValue();
    if (ResultSet.next().isempty()){
        return DEFAULTWERT;
    }
    else{
        return ResultSet.next().doublevalue;
    }
}