model SimpleSimulation

global {
    int number_of_people <- 20;

    init {
        create people number: number_of_people {
            location <- {rnd(50), rnd(50)};
        }
    }
}

species people {
    aspect default {
        draw circle(2) color: #red;
    }

    reflex move_randomly {
        location <- location + {rnd(3)-1, rnd(3)-1};
    }
}

experiment simulation type: gui {
    output {
        display map type: 2d {
            species people;
        }
    }
}