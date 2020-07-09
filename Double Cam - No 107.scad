/*  3D Prints a "double cam" similar to Cam No 107 of Elna Supermatic, Elna SU machines sewing machines.

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

use <Cam-as-18-Sided-Polygon.scad>

double_disc_thickness = 9;

disc_thickness = 9; // 7 for single, 9 for double
thickest_cyl_rad = 17;

lobe_thickness = 4.5;
inner_hole_rad = 8.25;
hole_bigger_rad = 9.5;
bigger_hole_ht = 1.5;
cut_errors = 0.1;
hole_cone_ht = 1.5;
skirting = 0;


gap_bet_cloth_needle_cams = disc_thickness-2*skirting-2*lobe_thickness;

gap_to_transporthole = 1;

transporthole_width = 3;
transporthole_depth = 5.5;
transporthole_length  = 4;

peak=3;
c=peak/2;
l=0;
r=peak;
cl=peak/4;
cr=peak*3/4;
skirting_width=1.5;
min_radius = thickest_cyl_rad+skirting_width;
phase_diff = 60;

module letter(l,font="font.dxf",h=100,i=0) {
	union() {
		linear_extrude( height=h) import(font, layer=l[i]);
		translate([dxf_dim(file=font, name="advx",layer=l[i]),
			dxf_dim(file=font, name="advy",layer=l[i]),
			0])
			child();
	}
}

module word(wrd,font="font.dxf",h=100,i=0) {
	if(i < len(wrd)) {
		letter(wrd,font,h,i) word(wrd,font,h,i+1);
	} else {
		child();
	}
}


module print_d107_cam(x,y) {

	translate([x, y, 0]) rotate(a=[0,0,0]) difference() {
		union() {
			// tall INNER tall cylinder that excludes skirting 
		cylinder(h = disc_thickness, r = thickest_cyl_rad);
	
			// 2nd bigger cylinder shared between 2 cams and skirting; any sewing information would go here.
	
		translate([0, 0, skirting]) cylinder(h = disc_thickness - skirting*2, r = thickest_cyl_rad + skirting_width);
		translate([0, 0, skirting])
		linear_extrude (height  = lobe_thickness)
			plotpoly(c,c,l,c,c,r,c,c,l,c,c,r,c,c,l,c,c,r);
		
		// Upper cam for cloth movement
		rotate(a=[0,0,phase_diff])
		translate([0, 0, lobe_thickness])
		linear_extrude (height  = lobe_thickness)
			plotpoly(r,r,l,r,r,l,r,r,l,r,r,l,r,r,l,r,r,l);
		
	
		}
	
		// Subtract the inner hole. Be very generous.
		translate([0, 0, disc_thickness/2])
			cylinder(h = disc_thickness+1, r = inner_hole_rad, center = true);
	
		// Subtract the lower wider hole
		translate([0, 0, -cut_errors])
			cylinder(h = bigger_hole_ht+cut_errors, r = hole_bigger_rad);
	
	
		// Subtract the cone between wide hole and smaller hole.
		translate([0, 0, bigger_hole_ht-cut_errors])
			cylinder(h = hole_cone_ht, r1 = hole_bigger_rad, r2 = inner_hole_rad);
	
		// Subtract the upper cone the disk locks on the sewing machine post (only for double cams).
		translate([0, 0, double_disc_thickness-skirting-2+cut_errors])
			cylinder(h = 2, r = hole_bigger_rad);
	
		// Initials on the side of transport hole as depressions (top side while printing).
	
		for (letter_depth = [1:6])
		{
			rotate(a=[0, 0, 0]) translate([-2.25, 10.5, disc_thickness-0.1*letter_depth]) scale(0.0015) letter("O");
			rotate(a=[0, 0, 0]) translate([-1.5, 11.25, disc_thickness-0.1*letter_depth]) scale(0.001) letter("O");
			rotate(a=[0, 0, 140]) translate([-8, 10, disc_thickness-0.1*letter_depth]) scale(0.002) letter("E");
			rotate(a=[0, 0, 130]) translate([-4, 11, disc_thickness-0.1*letter_depth]) scale(0.002) letter("L");
			rotate(a=[0, 0, 120]) translate([-0, 11, disc_thickness-0.1*letter_depth]) scale(0.002) letter("N");
			rotate(a=[0, 0, 110]) translate([4, 10, disc_thickness-0.1*letter_depth]) scale(0.002) letter("A");

			rotate(a=[0, 0, 115]) translate([-8, -16, disc_thickness-0.1*letter_depth]) scale(0.002) letter("1");
			rotate(a=[0, 0, 115]) translate([-3, -17, disc_thickness-0.1*letter_depth]) scale(0.002) letter("0");
			rotate(a=[0, 0, 115]) translate([2, -17,disc_thickness-0.1*letter_depth]) scale(0.002) letter("7");
		}
		// Transport hole made as a rectangular  hole
		difference() {
			rotate(a=[0, 0, 0]) translate([0, hole_bigger_rad + gap_to_transporthole + transporthole_length/2, transporthole_depth/2-cut_errors])
				cube(size = [transporthole_width, transporthole_length, transporthole_depth], center = true);
	
		}
	}
}

print_d107_cam(0,0);