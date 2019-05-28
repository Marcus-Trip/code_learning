



invest_amount = 1000;
increase = 0.019;
amount_made = 0;
n=1;
revest =0;
place_hold = 0;

while(invest_amount < 10000)

    if(revest > 100)
        invest_amount = invest_amount + 100;
        
        revest = 0;
    end

place_hold = invest_amount * increase;
revest = revest + place_hold;
amount_made = amount_made + place_hold;
n= n+1;
end
years = n*4/52
amount_made
invest_amount

