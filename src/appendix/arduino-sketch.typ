== Arduino sketch <Arduino-sketch>

```Cpp
#include <Arduino.h>
#include <limits.h>

// ~~~~~~~~~~~~ Pins ~~~~~~~~~~~~ //

/** LED connected to a PWM pin. */
#define LED_PIN 9

/** PIR motion sensor connected to a digital pin. */
#define SENOR_PIN 2

// UART

/** Baud rate for both UART connections. */
#define BAUD_RATE 9600


/** The pin for TX for UART0. */
#define UART0_TX 0

/** The pin for RX for UART0. */
#define UART0_RX 1

/** The pin for TX for UART1. */
#define UART1_TX 4

/** The pin for RX for UART1. */
#define UART1_RX 5

// ~~~~~~~~~~~~ Brightness ~~~~~~~~~~~~ //

/** Current LED brightness (0-255). */
static int brightness = 0;

/** The maximum brightness level. */
#define MAX_BRIGHTNESS 255

/** The minimum brightness level. */
#define MIN_BRIGHTNESS 0

// ~~~~~~~~~~~~ Timing ~~~~~~~~~~~~ //

/** Last time motion was detected */
static unsigned long lastMotionTime = 0;

/** The amount of time of no motion before dimming. */
#define DIM_DELAY 5000

/** How fast to fade the LED. */
#define FADE_STEP 5

// ~~~~~~~~~~~~ Distance and direction ~~~~~~~~~~~~ //

/**
 * An enum to keep track of directions which direction
 * a possible driver can come from. A traffic always
 * assumes to be on the right side, facing inwards
 * towards the road.
 */
enum Direction {

  /**
   * A traffic always assumes to be on the right side,
   * facing inwards towards the road. `NEXT` means the
   * driver is traveling on the other side as the
   * traffic light, and is driving towards this light.
   */
  NEXT = 0,

  /**
   * A traffic always assumes to be on the right side,
   * facing inwards towards the road. `PREVIOUS` means
   * the driver is traveling on the same side as the
   * traffic light, and is driving towards this light.
   */
  PREVIOUS
}

static Direction direction = Direction.NEXT;

/** The distance between two traffic lights. */
#define DISTANCE_BETWEEN_TRAFFIC_LIGHTS 4

/** The maximum value an unsigned int can have */
const unsigned int NOTHING_SPOTTED = std::numeric_limits<unsigned int>::max();

/** The distance in meters to the closest object. */
static unsigned int distance = NOTHING_SPOTTED;

/** The speed of the fastest object */
static unsigned int speed = 0;

/**
 * Gets the distance between the sensor and the closest object.
 * For processing we only consider drivers moving towards this
 * traffic light.
 */
void scan() {
  // Update `distance`, `speed`, and `direction` variables using
  // the sensors or, possible signals for neighbors over UART...
}

/**
 * Signal a UART connection of an object approaching with a speed and
 * and distance.
 */
void signal(HardwareSerial* serial, unsigned int speed, unsigned int distance) {
    serial->print(distance);
    serial->print(',');
    serial->print(speed);
    serial->print('\n');
}

/** The method to run once before starting the main function body. */
void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(SENOR_PIN, INPUT);
  analogWrite(LED_PIN, brightness);
  Serial1.begin(BAUD_RATE, SERIAL_8N1, UART0_TX, UART0_RX);
  Serial2.begin(BAUD_RATE, SERIAL_8N1, UART1_TX, UART1_RX);
}

/** the main function body that loops over and over again. */
void loop() {

  scan();

  /* Check if the sensors see something. */ {
    if (distance != MAX_DISTANCE) {
      const int nextDistance = distance - DISTANCE_BETWEEN_TRAFFIC_LIGHTS;
      const void* device = (void*) &Serial1;
      if (direction == Direction.PREVIOUS) device = (void*) &Serial2;
      signal(device, speed, nextDistance);
      brightness = maxBrightness;
      lastMotionTime = millis();
      return;
    }
  }

  /* If there is no motion, fade away */ {
    const unsigned long timeSinceLastSprot = millis() - lastMotionTime;
    if (timeSinceLastSprot > DIM_DELAY) {
      brightness = brightness - FADE_STEP;
      if (brightness < MIN_BRIGHTNESS) {
        brightness = MIN_BRIGHTNESS;
      }
    }
  }
}
```
