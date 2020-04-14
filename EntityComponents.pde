abstract class EntityComponent {
  UUID id;
  Entity entity;
  
  EntityComponent(){
    id = UUID.randomUUID();
  }
  
  abstract void update();
  
  abstract void setup();
}

class Rigidbody extends EntityComponent {
  Vector2 velocity;
  Float mass;
  float angularVelocity;
  
  Rigidbody(float _mass){
    mass = _mass;
  }
  
  void update(){
    println("updating rigidbody!");
  }
  
  void setup(){
    velocity = new Vector2(0, 0);
    if (mass == null){
       mass = 1.0;
    }
  }
  
  void addForce(Vector2 force){
    
  }
  
  void addForce(float x, float y){
    
  }
  
  void addImpulseForce(Vector2 force){
    velocity.addTo(force);
  }
  
  void addImpulseForce(float x, float y){
    velocity.x += x;
    velocity.y += y;
  }
}

class Collider extends EntityComponent {
  Vector2 size;
  Vector2 offset;
  
  Collider(float x, float y){
    size = new Vector2(x, y);
  }
  
  Collider(Vector2 _size){
    size = _size.clone(); 
  }
  
  void update(){
    println("updating collider!");
  }
  
  void setup(){
    offset = new Vector2(0, 0);
    if (size == null){
      size = new Vector2(0,0);
    }
  }
}
