
ArrayList<String> inventory;

void setup() {
  size(200, 200);
  inventory = new ArrayList();
  inventory.add("coffee");
  inventory.add(0, inventory.get(0)+"flour");
  inventory.add(0, inventory.get(0)+"victor");
  println(inventory);
  noLoop();
  fill(0);
  textAlign(CENTER);
}

void draw() {
  String item = inventory.get(0);
  text(item, width/2, height/2);
}
