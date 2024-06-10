void main() {

	findVolume(10);  // Default value comes into action
	print("");

	findVolume(10, height: 5, breadth: 30);  // Overrides the old value with new one
	print("");

	findVolume(10, breadth: 30, height: 5);  // Making use of Named Parameters with Default values
}

                             // Default Parameters
void findVolume(int length, {int breadth=1, int height=1}) {

	print("Lenght is $length");
	print("Breadth is $breadth");
	print("Height is $height");

	print("Volume is ${length * breadth * height}");
}