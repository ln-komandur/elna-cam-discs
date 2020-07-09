/*  3D Prints 5 cams for Elna Supermatic, Elna SU machines sewing machine in 1 Print job.
    Copyright (C) 2020  L Komandur

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

*/
use <Single Cam - No 33.scad>
use <Double Cam - No 107.scad>
use <Single Cam - No 20.scad>
use <Single Cam - No 13.scad>
use <Single Cam - No 16.scad>

// displacement of how far away the cams should be placed in the print job
cam_printing_displacement = 43;

//main

// positions 4 cams as 1 per quardrant

rotate(a=[0,0,0]) translate([0,cam_printing_displacement/2,0.5]) cube(size=[3,12,0.5],center = true);
rotate(a=[0,0,0]) translate([cam_printing_displacement/2,0,0.5]) cube(size=[12,3,0.5],center = true);
rotate(a=[0,0,0]) translate([-cam_printing_displacement/2,0,0.5]) cube(size=[12,3,0.5],center = true);
rotate(a=[0,0,0]) translate([0,-cam_printing_displacement/2,0.5]) cube(size=[3,12,0.5],center = true);

// prints the double cam at the center

print_d107_cam(0,0);

// prints 4 single cams as 1 per quardrant
print_s13_cam(cam_printing_displacement,0);
print_s16_cam(0,cam_printing_displacement);
print_s33_cam(0,-cam_printing_displacement);
print_s20_cam(-cam_printing_displacement,0);

