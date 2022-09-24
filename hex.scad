// these units are in inches
$height = 1 / 8;
$side = 1 + 3 / 8;
$margin = 2 / 8;


module hexagon(s) {
    h = cos(30)*s;
    polygon(
        points=[
            [-s / 2,-h],
            [-s, 0],
            [-s / 2, h],
            [s / 2, h],
            [s, 0],
            [s / 2, -h],
        ], 
        paths=[
            [0,1,2,3,4,5]
        ]
    );
}

difference(){
    linear_extrude(height = $height, center = true) {
        hexagon($side);
    }

    linear_extrude(height = $height, center = true) {
        hexagon($side - $margin);
    }
}
