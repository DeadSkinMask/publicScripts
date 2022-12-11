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

  // Método que se ejecuta en cada instante en el tiempo
  void Update()
  {
    // Calcular la aceleración del oscilador
    float a = -k * pos / m;

    // Calcular la posición del oscilador en el siguiente instante en el tiempo
    float newPos = pos + vel * dt + 0.5 * a * dt * dt;

    // Calcular la velocidad del oscilador en el siguiente instante en el tiempo
    float newVel = vel + a * dt;

    // Actualizar la posición y la velocidad
