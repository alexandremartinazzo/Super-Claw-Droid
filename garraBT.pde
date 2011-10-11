//Saídas digitais - 4 motores
int pwm1Pin = 8;
int inv1Pin = 9;

int pwm2Pin = 2;
int inv2Pin = 3;

int pwm3Pin = 4;
int inv3Pin = 5;

int pwm4Pin = 6;
int inv4Pin = 7;

// BT
char val;

void setup(){
    // configuração
    //pinMode(pwm1Pin, OUTPUT);
    //pinMode(inv1Pin, OUTPUT);
    //pinMode(pwm2Pin, OUTPUT);
    //pinMode(inv2Pin, OUTPUT);
    //pinMode(pwm3Pin, OUTPUT);
    //pinMode(inv3Pin, OUTPUT);
    //pinMode(pwm4Pin, OUTPUT);
    //pinMode(inv4Pin, OUTPUT);

    Serial.begin(115200); // comunicação PC
    Serial1.begin(115200); // comunicação módulo BT
}

int receive_bt(){
    // recebe dados do módulo Bluetooth
    val = Serial.read();
    Serial1.println( val );
    return 1;

    if (val == 0)
    {
        Serial1.println("A");
    }
    return 1;
}

void loop(){
    receive_bt();
}
