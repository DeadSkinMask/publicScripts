// Inicializar la posición y la velocidad del cuerpo en un instante dado
let pos = { x: 0, y: 0, z: 0 };
let vel = { x: 10, y: 20, z: 30 };

// Intervalo de tiempo entre dos instantes consecutivos
const dt = 0.01;

// Inicializar la posición y la velocidad del cuerpo en el instante anterior
let oldPos = { x: pos.x, y: pos.y, z: pos.z };
let oldVel = { x: vel.x, y: vel.y, z: vel.z };

// Bucle que se ejecuta en cada instante en el tiempo
while (true) {
  // Calcular la posición del cuerpo en el siguiente instante en el tiempo
  pos.x = 2 * pos.x - oldPos.x + a.x * dt * dt;
  pos.y = 2 * pos.y - oldPos.y + a.y * dt * dt;
  pos.z = 2 * pos.z - oldPos.z + a.z * dt * dt;

  // Calcular la velocidad del cuerpo en el siguiente instante en el tiempo
  vel.x = (pos.x - oldPos.x) / (2 * dt);
  vel.y = (pos.y - oldPos.y) / (2 * dt);
  vel.z = (pos.z - oldPos.z) / (2 * dt);

  // Actualizar la posición y la velocidad del cuerpo en el instante anterior
  oldPos.x = pos.x;
  oldPos.y = pos.y;
  oldPos.z = pos.z;
  oldVel.x = vel.x;
  oldVel.y = vel.y;
  oldVel.z = vel.z;
}
