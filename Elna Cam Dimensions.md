# Single cams / discs dimensions
They have lobes only on their lower half. They serve to move the needle between left and right stich positions
1.   disc_thickness = 7mm;

# Double cams / discs dimensions
They have lobes on the upper half in addition to the lower half. 
They are thicker than single cams by 2mm to accommodate lobes on the upper half. But their inner hole is the same height as single cams. 
There is an additional bigger hole (2mm depth) on the top side of these cams just like the one on their bottom side to let them "click in" and "click out" of the cam holder. (see pictures)
1.   double_disc_thickness = 9mm;

#  Dimensions Common to both single and  double cam / disc 
These align with the cam holder mechanism in the sewing machine for either cam types to *click in* and fit perfectly

1. thickest_cyl_rad = 17mm - radius of the thickest cam cylinder. This is the basic cylinder on whose circumference the lobes will sit on. 
1. lobe_thickness = 4.5mm - height / thickness of each lobe that sits on the circumference of the basic cam cylinder.
1. inner_hole_rad = 8.25mm - radius of the inner hole in the cam cylinder. This hole is cut to make the cam go on the cam holder shaft.
1. hole_bigger_rad = 9.5mm - radius of the lower part of the inner hole in the cam cylinder. It is slightly bigger.
1. bigger_hole_ht = 1.5mm - height of the lower part of the inner hole in the cam cylinder. It is slightly bigger.
1. cut_errors = 0.1mm - this decides the finess of the printed sides. It also depends on the settings on the 3D printer. 
1. hole_cone_ht = 1.5mm - the height of the cone that tapers the bigger inner hole to the smaller inner hole. 
1. skirting = 0;

## Transport hole
This aligns the cam to the pin in the cam holder mechanism. It is 3D printed as a void cuboid.

1. gap_to_transporthole = 1; distance of the transport hole from the edge of the bigger inner hole
1. transporthole_width = 3mm;
1. transporthole_depth = 5.5mm;
1. transporthole_length  = 4mm;

# Design considerations from sewing maching cam rotation mechanism
1. Each rotation of a cam / cam holder shaft makes 18 stiches / needle punches
1. The lower lobes on the body of a cam of either type (single / double) serve to move the needle between left and right stich positions
1. The upper lobes on the body of a double cam serve to move the cloth forwards and backwards

# Size of letters on the cam
1. Font type - ?
1. Font size - ?
1. Depth - ?

# Printing considerations
1. Cams print right side up. i.e.
   1. letters are on the top side of the print job
   1. transport hole is on the bottom side of the print job 
   1. ![5 Cams in 1 print job](https://github.com/ln-komandur/elna-cam-discs/blob/master/5%20Cams%20in%201%20print%20job.png)
1. After 3D printing, the 5 cams can be snapped free from each other. 

