
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
# MEHODS:                   DESCRIPTION:
#  blockStart                Creates start dates for equally sized blocks
#  blockEnd                  Creates end dates for equally sized blocks
################################################################################


blockStart <- 
    function(x, block = 20)
{   
    # A function implemented by Diethelm Wuertz

    # Description:
    #   Computes start dates for numeric blocks of dates
    
    # Example:
    #   blockEnd(timeSequence(), block = 30)

    # FUNCTION:
    
    # Start Dates of Blocks:
    nx = length(as.character(x))
    fromIdx = seq(1, nx, by = block)
    from = x[fromIdx]
    
    # Return Value:
    from
}

# ------------------------------------------------------------------------------


blockEnd <- 
    function(x, block = 20)
{   
    # A function implemented by Diethelm Wuertz

    # Description:
    #   Computes start dates for numeric blocks of dates
    
    # Example:
    #   blockEnd(timeSequence(), block = 30)

    # FUNCTION:
    
    # End Dates of Blocks:
    nx = length(as.character(x))
    fromIdx = seq(1, nx, by = block)
    toIdx = c(fromIdx[-1]-1, nx)
    to = x[toIdx]
    
    # Return Value:
    to
}


################################################################################

