
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Library General Public
# License as published by the Free Software Foundation; either
# version 2 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Library General Public License for more details.
#
# You should have received a copy of the GNU Library General
# Public License along with this library; if not, write to the
# Free Foundation, Inc., 59 Temple Place, Suite 330, Boston,
# MA  02111-1307  USA

# Copyrights (C)
# for this R-port: 
#   1999 - Diethelm Wuertz, GPL
#   2007 - Rmetrics Foundation, GPL
#   Diethelm Wuertz <wuertz@phys.ethz.ch>
#   www.rmetrics.org
# for the code accessed (or partly included) from other R-ports:
#   see R's copyright and license files
# for the code accessed (or partly included) from contributed R-ports
# and other sources
#   see Rmetrics's copyright file


################################################################################
# FUNCTION:                 DESCRIPTION:
#  timeNthNdayInMonth        Computes n-th ocurrance of a n-day in year/month
#  timeLastNdayInMonth       Computes the last n-day in year/month
################################################################################


timeNthNdayInMonth <- 
    function(charvec, nday = 1, nth = 1, format = "%Y-%m-%d", 
    zone = myFinCenter, FinCenter = myFinCenter)
{   
    # A function implemented by Diethelm Wuertz

    # Description:
    #   Computes "nth" ocurrance of a "nday" (nth = 1,...,5)
    #   in "year,month"

    # Arguments:
    #   charvec - a character vector of dates and times.
    #   nday - an integer vector with entries ranging from
    #       0 (Sunday) to 6 (Saturday).
    #   nth - an integer vector numbering the n-th occurence.
    #   format - the format specification of the input character
    #       vector.
    #   FinCenter - a character string with the the location of the
    #       financial center named as "continent/city".

    # Value:
    #   Returns the "nth" ocurrance of a "nday" (nth = 1,...,5)
    #   in "year,month" as a 'timeDate' object.

    # Example:
    #   What date is the second Monday in April 2004?
    #   timeNthNdayInMonth("2004-04-01", 1, 2)

    # FUNCTION:

    # Set Timezone to GMT:
    myTZ = Sys.getenv("TZ")
    Sys.setenv(TZ = "GMT")
    if (FinCenter == "") FinCenter = "GMT"

    # timeDate:
    lt = strptime(charvec, format)

    # On or after:
    lt1 = lt
    lt1$mday = 1
    ct = 24*3600*(as.integer(julian.POSIXt(lt)) + (nth-1)*7 +
        (nday-lt1$wday)%%7)
    class(ct) = "POSIXct"

    # Return Value:
    Sys.setenv(TZ = myTZ)
    timeDate(format(ct), format = format, zone = zone,
        FinCenter = FinCenter)
}


# ------------------------------------------------------------------------------


timeLastNdayInMonth <-
    function(charvec, nday = 1, format = "%Y-%m-%d", zone = myFinCenter,
             FinCenter = myFinCenter)
{   
    # A function implemented by Diethelm Wuertz

    # Description:
    #   Computes the last "nday" in "year/month"

    # Arguments:
    #   charvec - a character vector of dates and times.
    #   nday - an integer vector with entries ranging from
    #       0 (Sunday) to 6 (Saturday).
    #   format - the format specification of the input character
    #       vector.
    #   FinCenter - a character string with the the location of the
    #       financial center named as "continent/city".

    # Value:
    #   Returns the last "nday" in "year/month" as a 'timeDate'
    #   object.

    # Example:
    #   What date has the last Tuesday in May, 1996?
    #   timeLastNdayInMonth("1996-05-01", 2)

    # Changes:
    #

    # FUNCTION:

    # Set Timezone to GMT:
    myTZ = Sys.getenv("TZ")
    Sys.setenv(TZ = "GMT")
    if (FinCenter == "") FinCenter = "GMT"

    # Last Day:
    last.day = c(31,28,31, 30,31,30, 31,31,30, 31,30,31)
    lt = strptime(charvec, format)
    y = 1900 + lt$year
    leap.year = (y%%4 == 0 & (y%%100 != 0 | y%%400 == 0))
    leap.day = as.integer(leap.year)*as.integer(lt$mon == 1)
    lt$mday = last.day[1 + lt$mon] + leap.day
    lt <- strptime(lt, format)  # to make sure that lt$wday
                                # represents the wday of the
                                # last day of the month
    ct = 24*3600*(as.integer(julian.POSIXt(lt)) - (-(nday-lt$wday))%%7)
    class(ct) = "POSIXct"

    # Return Value:
    Sys.setenv(TZ = myTZ)
    timeDate(format(ct), format = format, zone = zone,
        FinCenter = FinCenter)
}


################################################################################

