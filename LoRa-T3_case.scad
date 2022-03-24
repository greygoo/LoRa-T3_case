$fn=32;
include <basic_case-parameterized/basic_case-parameterized.scad>

// choose part to render
//part                = "case_inlay";
//part                = "case_all";
//part                = "case_cover";
//part                = "case_bottom";

//T3(part=part,cuts=cuts_t3);

// Fixed values - do not change
dim_t3_board        = [65,27,1.25];
uppers_t3           = 5;
lowers_t3           = 13;
dia_t3_screws       = 2.3;
loc_t3_screws       = [[2.6,1.45],
                       [dim_t3_board[0]-2.6,3.2,0],
                       [dim_t3_board[0]-2.6,dim_t3_board[1]-1.45,0],
                       [2.6,dim_t3_board[1]-3.2,0]];
cuts_t3             = [[[14.8,-8],[7.8,7.8],"front","rnd_indent"],  // antenna port
                       [[2.75,0],[8,3],"left","sqr_indent"], // usb port
                       [[13.4,0],[11.5,3],"left","sqr_indent"],  // sdcard/usb port
                       [[40.8,-dim_t3_board[2]-2.1],[4.65,2.1],"back","sqr_cone"],  // reset
                       [[49.5,-dim_t3_board[2]-4],[9.4,4],"back","sqr_cone"],// switch
                       [[24.6,4.5],[25,17],"top","sqr"]]; //display
space_t3_screws     = 1;

module T3(part                = "all_case",
          dia_cscrew          = 2.3,
          dia_chead           = 4.7,
          height_chead        = 1.8,
          text                = "TSM",
          font                = "Source Sans Pro:style=Bold",
          size_text           = 8,
          loc_text            = [4.5,14.5],
          wall                = 1.2,
          rim                 = 0.8,
          port_length         = 30,
          mki                 = 4,
          grow                = 4,
          height_bottom       = 11,
          render_floor        = 1,
          render_top          = 1,
          cuts){



    case(part=part,
         dim_board=dim_t3_board,
         space_top=uppers_t3,
         space_bottom=lowers_t3,
         dia_bscrew=dia_t3_screws,
         space_bscrew=space_t3_screws,     
         loc_bscrews=loc_t3_screws,
         cuts=cuts,
         wall_frame=wall,
         rim=rim,
         grow=grow,
         dia_cscrew=dia_cscrew,
         dia_chead=dia_chead,
         height_chead=height_chead,
         height_bottom=height_bottom,
         mki=mki,
         text=text,
         size_text=size_text,
         loc_text=loc_text,
         font=font,
         port_length=port_length,
         render_floor=render_floor,
         render_top=render_top);
}