int startX, startY, endX, endY, strWeight, redColor, blueColor, greenColor, xPoint;
void setup()
{
  size(600,600);
  startX = 300;
  startY = 0;
  endX = 300;
  endY = 0;
  strWeight = 0;
  background(255);
  fill(60);
  textSize(20);
  text("(click to make your own, press any key to clear)", 67, 520);
  frameRate(30);
}
void draw()
{
	redColor = (int)(Math.random()*256);
	greenColor = (int)(Math.random()*256);
	blueColor = (int)(Math.random()*256);
	stroke(redColor, greenColor, blueColor);
	strokeWeight(strWeight);
	endX = startX + (int)((Math.random()*10)-5);
	endY = startY + (int)(Math.random()*17);
	line(startX, startY, endX, endY);
	startX = endX;
	startY = endY;
	strWeight ++;
	if (endY > 600)
	{
		mousePressed();
	}

}
void mousePressed()
{
	startX = (int)(Math.random()*601);
 	startY = 0;
 	endX = (int)(Math.random()*601);
  	endY = 0;
  	strWeight = 0;
}

void keyPressed()
{
	size(600,600);
	startX = 300;
	startY = 0;
	endX = 300;
	endY = 0;
	strWeight = 0;
	background(255);
	fill(60);
	textSize(20);
	text("(click to make your own, press any key to clear)", 67, 520);
}