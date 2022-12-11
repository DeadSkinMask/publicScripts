class VerletIntegrator
{
  // Inicializar la posición y la velocidad del cuerpo en un instante dado
  vec3 pos = vec3(0, 0, 0);
  vec3 vel = vec3(10, 20, 30);

  // Intervalo de tiempo entre dos instantes consecutivos
  const float dt = 0.01;

  // Inicializar la posición y la velocidad del cuerpo en el instante anterior
  vec3 oldPos = pos;
  vec3 oldVel = vel;

  // Método que se ejecuta en cada instante en el tiempo
  void Update()
  {
    // Calcular la posición del cuerpo en el siguiente instante en el tiempo
    pos = 2 * pos - oldPos + a * dt * dt;

    // Calcular la velocidad del cuerpo en el siguiente instante en el tiempo
    vel = (pos - oldPos) / (2 * dt);

    // Actualizar la posición y la velocidad del cuerpo en el instante anterior
    oldPos = pos;
    oldVel = vel;
  }
}
