#!/bin/bash
    read -p "Enter the name of the car brand " car

    case $car in
    Tesla)
    echo -n "${car}'s car factory is in the USA" ;;

    BMW | audi | Mercedes)
    echo -n "${car}'s car factory is in the Germany" ;;

    TATA | Mahindra | Honda)
    echo -n "${car}'s car factory is in the India" ;;

    *)
    echo -n "${car}'s is unknow brand." 
    ;;
esac
