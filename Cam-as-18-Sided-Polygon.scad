/*  Provides a common method / function / module to 3D Print an 18 sided polygon for a cam used by Elna Supermatic, Elna SU machines sewing machines, matching with the 18 punches made by the needle per each rotation of a cam.

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

thickest_cyl_rad = 17;
skirting_width=1.5;

angle_of_side = 11;
min_radius = thickest_cyl_rad+skirting_width;

module plotpoly(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18) {
	//scale ([-1,1])
	polygon( points = [
	[(min_radius + p1)*sin(0-angle_of_side/2), (min_radius + p1)*cos(0-angle_of_side/2)],
	[(min_radius + p1)*sin(0+angle_of_side/2), (min_radius + p1)*cos(0+angle_of_side/2)],
	[(min_radius + p2)*sin(20-angle_of_side/2), (min_radius + p2)*cos(20-angle_of_side/2)],	
	[(min_radius + p2)*sin(20+angle_of_side/2), (min_radius + p2)*cos(20+angle_of_side/2)],	
	[(min_radius + p3)*sin(40-angle_of_side/2), (min_radius + p3)*cos(40-angle_of_side/2)],	
	[(min_radius + p3)*sin(40+angle_of_side/2), (min_radius + p3)*cos(40+angle_of_side/2)],	
	[(min_radius + p4)*sin(60-angle_of_side/2), (min_radius + p4)*cos(60-angle_of_side/2)],	
	[(min_radius + p4)*sin(60+angle_of_side/2), (min_radius + p4)*cos(60+angle_of_side/2)],	
	[(min_radius + p5)*sin(80-angle_of_side/2), (min_radius + p5)*cos(80-angle_of_side/2)],	
	[(min_radius + p5)*sin(80+angle_of_side/2), (min_radius + p5)*cos(80+angle_of_side/2)],	
	[(min_radius + p6)*sin(100-angle_of_side/2), (min_radius + p6)*cos(100-angle_of_side/2)],	
	[(min_radius + p6)*sin(100+angle_of_side/2), (min_radius + p6)*cos(100+angle_of_side/2)],	
	[(min_radius + p7)*sin(120-angle_of_side/2), (min_radius + p7)*cos(120-angle_of_side/2)],	
	[(min_radius + p7)*sin(120+angle_of_side/2), (min_radius + p7)*cos(120+angle_of_side/2)],	
	[(min_radius + p8)*sin(140-angle_of_side/2), (min_radius + p8)*cos(140-angle_of_side/2)],	
	[(min_radius + p8)*sin(140+angle_of_side/2), (min_radius + p8)*cos(140+angle_of_side/2)],	
	[(min_radius + p9)*sin(160-angle_of_side/2), (min_radius + p9)*cos(160-angle_of_side/2)],	
	[(min_radius + p9)*sin(160+angle_of_side/2), (min_radius + p9)*cos(160+angle_of_side/2)],	
	[(min_radius + p10)*sin(180-angle_of_side/2), (min_radius + p10)*cos(180-angle_of_side/2)],	
	[(min_radius + p10)*sin(180+angle_of_side/2), (min_radius + p10)*cos(180+angle_of_side/2)],	
	[(min_radius + p11)*sin(200-angle_of_side/2), (min_radius + p11)*cos(200-angle_of_side/2)],	
	[(min_radius + p11)*sin(200+angle_of_side/2), (min_radius + p11)*cos(200+angle_of_side/2)],	
	[(min_radius + p12)*sin(220-angle_of_side/2), (min_radius + p12)*cos(220-angle_of_side/2)],	
	[(min_radius + p12)*sin(220+angle_of_side/2), (min_radius + p12)*cos(220+angle_of_side/2)],	
	[(min_radius + p13)*sin(240-angle_of_side/2), (min_radius + p13)*cos(240-angle_of_side/2)],	
	[(min_radius + p13)*sin(240+angle_of_side/2), (min_radius + p13)*cos(240+angle_of_side/2)],	
	[(min_radius + p14)*sin(260-angle_of_side/2), (min_radius + p14)*cos(260-angle_of_side/2)],	
	[(min_radius + p14)*sin(260+angle_of_side/2), (min_radius + p14)*cos(260+angle_of_side/2)],	
	[(min_radius + p15)*sin(280-angle_of_side/2), (min_radius + p15)*cos(280-angle_of_side/2)],	
	[(min_radius + p15)*sin(280+angle_of_side/2), (min_radius + p15)*cos(280+angle_of_side/2)],	
	[(min_radius + p16)*sin(300-angle_of_side/2), (min_radius + p16)*cos(300-angle_of_side/2)],		
	[(min_radius + p16)*sin(300+angle_of_side/2), (min_radius + p16)*cos(300+angle_of_side/2)],		
	[(min_radius + p17)*sin(320-angle_of_side/2), (min_radius + p17)*cos(320-angle_of_side/2)],	
	[(min_radius + p17)*sin(320+angle_of_side/2), (min_radius + p17)*cos(320+angle_of_side/2)],	
	[(min_radius + p18)*sin(340-angle_of_side/2), (min_radius + p18)*cos(340-angle_of_side/2)],
	[(min_radius + p18)*sin(340+angle_of_side/2), (min_radius + p18)*cos(340+angle_of_side/2)]
	]);

}

