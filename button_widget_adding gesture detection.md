## we have to detect when a user actually click on one of these images:
ans: by using 
## buttom widget 

## FlatButton
that react to touches by filling with color

###### SetState():
Expanded(
    flex: 1,
    child: TextButton(
    child: Image.asset('images/dice$leftDiceNum.png'),
#    onPressed: () {
#    setState(() {
#    leftDiceNum = 2;
#    });
    print('1st dice clicked');
    },
    ),
),