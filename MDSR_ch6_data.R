library(tidyverse)
library(mdsr)

hiv <- tribble(
  ~Country, ~`1979`, ~`1989`, ~`1999`, ~`2009`,
  "France", NA, NA, 0.3, 0.4,
  "South Africa", NA, NA, 14.8, 17.2,
  "United States", 0.0318, NA, 0.5, 0.6
)

BP_narrow <- tribble(
  ~subject, ~when, ~sbp,
  "BHO", "before", 160,
  "GWB", "before", 120,
  "WJC", "before", 105,
  "BHO", "after", 115,
  "GWB", "after", 135,
  "WJC", "after", 145
)

BP_wide <- tribble(
  ~subject, ~before, ~after,
  "BHO", 160, 115,
  "GWB", 120, 135,
  "WJC", 105, 145
)

BP_full <- tribble(
  ~subject,	~when,	~sbp,	~dbp,	~date,
  "BHO", "before",	160,	69,	"2007-06-19",
  "GWB", "before", 120,	54,	"1998-04-21",
  "BHO", "before", 155, 65,	"2005-11-08",
  "WJC", "after",	145, 75, "2002-11-15",
  "WJC", "after",	NA,	65,	"2010-03-26",
  "WJC", "after",	130, 60, "2013-09-15",
  "GWB", "after", 135, NA, "2009-05-08",
  "WJC", "before", 105,	60,	"1990-08-17",
  "BHO", "after",	115, 78, "2017-06-04"
)
