## Expanded Widget:

it is a sigle child class of ROW, COLUMN & FLEX

-- It expand to fill available space in the main axis
## eg,
    class DicePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Row(
children: [
Expanded(
child: Image(
image: AssetImage('images/dice1.png'),
),
),

## OUTPUT: See expanded one dice in Screenshots folder

## For 2 Expanded class:
eg ## see Expanded 2 dice image from screenshots folder


## HENCE
## suppose I want 1st dice to take twice as much space then the 2nd one:
then use
## FLEX Property

eg, 
## see flex 2 and 1 image from screenshots folder

return Row(
children: [
Expanded(
## flex: 2, this expand will have twice as much space then the other
child: Image(
image: AssetImage('images/dice1.png'),
),
),
Expanded(
## flex: 1,
child: Image(
image: AssetImage('images/dice1.png'),
),