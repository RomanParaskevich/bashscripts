#!/bin/bash
echo "введите x"
read X
echo "введите y"
read Y
echo "введите z"
read Z
echo "введите w"
read W

cosz=$(echo "scale=3; c($Z)" | bc -l)
cosy=$(echo "scale=3; c($Y)" | bc -l)

if ((X > 0)) && ((Z < 5)); then
    F=$(($X**2 + $W))
elif ((X > 0)) && ((Z >= 5)); then
    F=$(echo "$cosz + $X * $Y" | bc -l)
elif ((X < 0)) && ((Z > 5)); then
    F=$(echo "$W + $X * $cosy" | bc -l)
else
echo "Случай не предусмотрен"
fi

echo"%F"

