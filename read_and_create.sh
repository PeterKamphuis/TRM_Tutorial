#!/bin/csh

nhermes 'RFITS FITSFILE=NGC_2903.fits OUTSET=NGC_2903;'
nhermes 'RFITS FITSFILE=NGC_2903_mask.fits OUTSET=NGC_2903_mask;'
nhermes 'CONDIT INSET=NGC_2903  BOX= ; MASKSET=NGC_2903_mask  OUTSET=NGC_2903_masked RGMODE= ; RANGE=0.5 2.0 BLMODE= ; BLOCKVAL= ;'  
nhermes 'MOMENTS INSET=NGC_2903_masked v BOX= ; OPTION=1 OUTSET=NGC_2903_vel_in AUTO= ; RANGE= ; WINDOW=0'
nhermes 'DIMINISH INSET=NGC_2903_vel_in s BOX= ; OUTSET=NGC_2903_vel'
nhermes 'DELETE INSET=NGC_2903_vel_in; OK = Y;'
nhermes 'EDITSET INSET=NGC_2903_vel EXPRESSION=DATA/1000. ANOTHER=N'
nhermes 'FIXHED INSET=NGC_2903_vel ITEM=BUNIT; CUNIT1; CUNIT2; CTYPE1; CTYPE2;  VALUE=km/s ; deg; deg; RA---SIN;DEC--SIN;  COMMENT= ; ; ; ; ;'
nhermes 'FIXHED INSET=NGC_2903_vel ITEM=CUNIT4; CRVAL4; CRVAL3 ;CTYPE3; CDELT 4; CTYPE4; DTYPE4; DRVAL4;DUNIT4; MODE=D ;'
nhermes 'WFITS INSET=NGC_2903_vel BOX= ; FITSFILE=NGC_2903_vel.fits BITPIX= ;'
    
