Dst Index --------------------------------------------------------------------------------------

Dst (Disturbance Storm Time) equivalent equatorial magnetic disturbance indices are derived from
hourly scalings of low-latitude horizontal magnetic variations. They show the effect of the
globally symmetrical westward flowing high altitude equatorial ring current, which causes the
"main phase" depression worldwide in the H-component field during large magnetic storms.

Hourly H-component magnetic variations are analyzed to remove annual secular change trends from
records of a worldwide array of low-latitude observatories. A cosine factor of the site latitude
transforms residual variations to their equatorial equivalents and harmonic analysis isolates
the term used as the Dst index.

Reference: Sugiura, M., Hourly values of equatorial Dst for the IGY, Ann. Int. Geophys. Year,
35, 9, Pergamon Press, Oxford, 1964.

Data Provider: World Data Center for Geomagnetism, Kyoto [http://wdc.kugi.kyoto-u.ac.jp/]

-----------------------------------------------------------------------------------------------

               Dst INDEX RECORD FORMAT (LENGTH: 120 BYTE FIXED)
===============================================================================
 Column   Fmt  Short Description
-------------------------------------------------------------------------------
  1-  3    A3  Index Name 'DST'
  4-  5    I2  Year (last 2 digits)
  6-  7    I2  Month
  8        A1  '*' for index
  9- 10    I2  Date
 11- 12    A2  All spaces or may be "RR" for quick look
 13        A1  'X' (for index)
 14        A1  Version (0: quicklook, 1: provisional, 2: final, 3 and up: 
               corrected final or may be space)
 15- 16    I2  Top two digits of the year (19 or space for 19XX, 20 from 2000) 
 17- 20    I4  Base value, unit 100 nT
 21-116  24I4  24 hourly values, 4 digit number, unit 1 nT, value 9999 for the 
               missing data. First data is for the first hour of the day, and 
               Last data is for the last hour of the day.
117-120    I4  Daily mean value, unit 1 nT. Value 9999 for the missing data.
-------------------------------------------------------------------------------