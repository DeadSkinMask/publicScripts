class HarmonicOscillator
{
  // Inicializar la posición y la velocidad del oscilador en un instante dado
  float pos = 0;
  float vel = 0;

  // Intervalo de tiempo entre dos instantes consecutivos
  const float dt = 0.01;

  // Constante de resorte del oscilador
  const float k = 1.0;

  // Masa del oscilador
  const float m = 1.0;

  // Frecuencia de oscilación del oscilador
  float frequency;

  // Número total de oscilaciones del oscilador
  int numOscillations;

  // Contador de oscilaciones
  int oscillationCounter = 0;

  // Método que se ejecuta en cada instante en el tiempo
  void Update(float timeBetweenOscillations, int maxNumOscillations)
{
  // Calcular la frecuencia de oscilación del oscilador
  frequency = 1.0 / timeBetweenOscillations;

  // Guardar el número máximo de oscilaciones del oscilador
  numOscillations = maxNumOscillations;

  // Calcular la aceleración del oscilador
  float a = -k * pos / m - frequency * frequency * pos;

  // Calcular la posición del oscilador en el siguiente instante en el tiempo
  float newPos = pos + vel * dt + 0.5 * a * dt * dt;

  // Calcular la velocidad del oscilador en el siguiente instante en el tiempo
  float newVel = vel + a * dt;

  // Incrementar el contador de oscilaciones
  oscillationCounter++;

  // Si se ha alcanzado el número máximo de oscilaciones, detener el oscilador
  if (oscillationCounter >= numOscillations)
  {
    newPos = 0;
    newVel = 0;
    oscillationCounter = 0;
  }

  // Actualizar la posición y la velocidad del oscilador
  pos = newPos;
  vel = newVel;
}
