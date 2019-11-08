if(alpha_change <= 1.0 and !reverse){
        alpha_change += 0.03;
        if(alpha_change >= 1.0)
            reverse = true;
    }
    else if(reverse){
        alpha_change -= 0.03;
        if(alpha_change <= 0.2)
            reverse = false;
}