
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
#  ...                       Holiday Dates
################################################################################


Septuagesima =
function(year = currentYear) {
    ans = Easter(year, -63)
    timeDate(as.character(ans)) }

Quinquagesima =
function(year = currentYear) {
    ans = Easter(year, -49)
    timeDate(as.character(ans)) }

AshWednesday =
function(year = currentYear) {
    ans = Easter(year, -46)
    timeDate(as.character(ans)) }

PalmSunday =
function(year = currentYear) {
    ans = Easter(year, -7)
    timeDate(as.character(ans)) }

GoodFriday =
function(year = currentYear) {
    ans = Easter(year, -2)
    timeDate(as.character(ans)) }

EasterSunday =
function(year = currentYear) {
    ans = Easter(year = currentYear)
    timeDate(as.character(ans)) }

EasterMonday =
function(year = currentYear) {
    ans = Easter(year, 1)
    timeDate(as.character(ans)) }

RogationSunday =
function(year = currentYear) {
    ans = Easter(year, 35)
    timeDate(as.character(ans)) }

Ascension =
function(year = currentYear) {
    ans = Easter(year, 39)
    timeDate(as.character(ans)) }

Pentecost =
function(year = currentYear) {
    ans = Easter(year, 49)
    timeDate(as.character(ans)) }

PentecostMonday =
function(year = currentYear) {
    ans = Easter(year, 50)
    timeDate(as.character(ans)) }

TrinitySunday =
function(year = currentYear) {
    ans = Easter(year, 56)
    timeDate(as.character(ans)) }

CorpusChristi =
function(year = currentYear) {
    ans = Easter(year, 60)
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


ChristTheKing =
function(year = currentYear) {
    ans = .on.or.after(year, 11, 20, 0)
    timeDate(as.character(ans)) }

Advent1st =
function(year = currentYear) {
    ans = .on.or.after(year, 11, 27, 0)
    timeDate(as.character(ans)) }

Advent2nd =
function(year = currentYear) {
    ans = .on.or.after(year, 12,  4, 0)
    timeDate(as.character(ans)) }

Advent3rd =
function(year = currentYear) {
    ans = .on.or.after(year, 12, 11, 0)
    timeDate(as.character(ans)) }

Advent4th =
function(year = currentYear) {
    ans = .on.or.after(year, 12, 18, 0)
    timeDate(as.character(ans)) }

ChristmasEve =
function(year = currentYear) {
    ans = year*10000 + 1224
    timeDate(as.character(ans)) }

ChristmasDay =
function(year = currentYear) {
    ans = year*10000 + 1225
    timeDate(as.character(ans)) }

BoxingDay =
function(year = currentYear) {
    ans = year*10000 + 1226
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


SolemnityOfMary =
function(year = currentYear) {
    ans = year*10000 + 0101
    timeDate(as.character(ans)) }

Epiphany =
function(year = currentYear) {
    ans = year*10000 + 0106
    timeDate(as.character(ans)) }

PresentationOfLord =
function(year = currentYear) {
    ans = year*10000 + 0202
    timeDate(as.character(ans)) }

Annunciation =
function(year = currentYear) {
    ans = year*10000 + 0325
    timeDate(as.character(ans)) }

TransfigurationOfLord =
function(year = currentYear) {
    ans = year*10000 + 0806
    timeDate(as.character(ans)) }

AssumptionOfMary =
function(year = currentYear) {
    ans = year*10000 + 0815
    timeDate(as.character(ans)) }

BirthOfVirginMary =
function(year = currentYear) {
    ans = year*10000 + 0908
    timeDate(as.character(ans)) }

CelebrationOfHolyCross =
function(year = currentYear) {
    ans = year*10000 + 0914
    timeDate(as.character(ans)) }

MassOfArchangels =
function(year = currentYear) {
    ans = year*10000 + 0929
    timeDate(as.character(ans)) }

AllSaints = function(year = currentYear) {
    ans = year*10000 + 1101
    timeDate(as.character(ans)) }

AllSouls =
function(year = currentYear) {
    ans = year*10000 + 1102
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


NewYearsDay =
function(year = currentYear) {
    ans = year*10000 + 0101
    timeDate(as.character(ans)) }

LaborDay =
function(year = currentYear) {
    ans = year*10000 + 0501
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


CHBerchtoldsDay =
function(year = currentYear) {
    ans = year*10000 + 0102
    timeDate(as.character(ans)) }

CHSechselaeuten =
function(year = currentYear) {
    ans = NULL
    for (y in year) {
        theDate = .nth.of.nday(y, 4, 1, 3)
        if (as.character(theDate) == as.character(Easter(y, +1))) {
            theDate = .nth.of.nday(y, 4, 1, 4)
        }
        ans = c(ans, theDate)
    }
    timeDate(as.character(ans)) }

CHAscension =
function(year = currentYear) {
    ans = Easter(year, 39)
    timeDate(as.character(ans)) }

CHConfederationDay =
function(year = currentYear) {
    ans = year*10000 + 0801
    timeDate(as.character(ans)) }

CHKnabenschiessen =
function(year = currentYear) {
    ans = .nth.of.nday(year, 9, 1, 2)
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


GBMayDay =
function(year = currentYear) {
    ans = .nth.of.nday(year, 5, 1, 1)
    timeDate(as.character(ans)) }

GBBankHoliday =
function(year = currentYear) {
    ans = .last.of.nday(year, 5, 31, 1)
    timeDate(as.character(ans)) }

GBSummerBankHoliday =
function(year = currentYear) {
    ans = .last.of.nday(year, 8, 31, 1)
    timeDate(as.character(ans)) }

GBMilleniumDay =
function(year = currentYear) {
    ans = 19991231
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


DEAscension =
function(year = currentYear) {
    ans = Easter(year, 39)
    timeDate(as.character(ans)) }

DECorpusChristi =
function(year = currentYear) {
    ans = Easter(year, 60)
    timeDate(as.character(ans)) }

DEGermanUnity =
function(year = currentYear) {
    ans = year*10000 + 1003
    timeDate(as.character(ans)) }

DEChristmasEve =
function(year = currentYear) {
    ans = year*10000 + 1224
    timeDate(as.character(ans)) }

DENewYearsEve =
function(year = currentYear) {
    ans = year*10000 + 1231
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


FRFetDeLaVictoire1945 =
function(year = currentYear) {
    ans = year*10000 + 0508
    timeDate(as.character(ans)) }

FRAscension =
function(year = currentYear) {
    ans = Easter(year, 39)
    timeDate(as.character(ans)) }

FRBastilleDay =
function(year = currentYear) {
    ans = year*10000 + 0714
    timeDate(as.character(ans)) }

FRAssumptionVirginMary =
function(year = currentYear) {
    ans = year*10000 + 0815
    timeDate(as.character(ans)) }

FRAllSaints =
function(year = currentYear) {
    ans = year*10000 + 1101
    timeDate(as.character(ans)) }

FRArmisticeDay =
function(year = currentYear) {
    ans = year*10000 + 1111
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


ITEpiphany =
function(year = currentYear) {
    ans = year*10000 + 0106
    timeDate(as.character(ans)) }

ITLiberationDay =
function(year = currentYear) {
    ans = year*10000 + 0425
    timeDate(as.character(ans)) }

ITAssumptionOfVirginMary =
function(year = currentYear) {
    ans = year*10000 + 0815
    timeDate(as.character(ans)) }

ITAllSaints =
function(year = currentYear) {
    ans = year*10000 + 1101
    timeDate(as.character(ans)) }

ITStAmrose =
function(year = currentYear) {
    ans = year*10000 + 1207
    timeDate(as.character(ans)) }

ITImmaculateConception =
function(year = currentYear) {
    ans = year*10000 + 1208
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


USNewYearsDay =
function(year = currentYear) {
    ans = year*10000 + 0101
    timeDate(as.character(ans)) }

USInaugurationDay =
function(year = currentYear) {
    ans = year*10000 + 0120
    timeDate(as.character(ans)) }

USMLKingsBirthday =
function(year = currentYear) {
    ans = .nth.of.nday(year, 1, 1, 3)
    timeDate(as.character(ans)) }

USLincolnsBirthday =
function(year = currentYear) {
    ans = year*10000 + 0212
    timeDate(as.character(ans)) }

USWashingtonsBirthday =
function(year = currentYear) {
    ans = year * 10000 + 222
    timeDate(as.character(ans)) }

USMemorialDay =
function(year = currentYear) {
    ans = .last.of.nday(year, 5, 31, 1)
    timeDate(as.character(ans)) }

USIndependenceDay =
function(year = currentYear) {
    ans = year*10000 + 0704
    timeDate(as.character(ans)) }

USLaborDay =
function(year = currentYear) {
    ans = .nth.of.nday(year, 9, 1, 1)
    timeDate(as.character(ans)) }

USColumbusDay =
function(year = currentYear) {
    ans = .nth.of.nday(year, 10, 1, 2)
    timeDate(as.character(ans)) }

USElectionDay =
function(year = currentYear) {
    ans = .on.or.after(year, 11, 2, 2)
    timeDate(as.character(ans)) }

USVeteransDay =
function(year = currentYear) {
    ans = year*10000 + 1111
    timeDate(as.character(ans)) }

USThanksgivingDay =
function(year = currentYear) {
    ans = .nth.of.nday(year, 11, 4, 4)
    timeDate(as.character(ans)) }

USChristmasDay =
function(year = currentYear) {
    ans = year*10000 + 1225
    timeDate(as.character(ans)) }

USCPulaskisBirthday =
function(year = currentYear) {
    ans = .nth.of.nday(year, 3, 1, 1)
    timeDate(as.character(ans)) }

USGoodFriday =
function(year = currentYear) {
    ans = Easter(year, -2)
    timeDate(as.character(ans)) }

USPresidentsDay =
function(year = currentYear) {
    ans = .nth.of.nday(year, 2, 1, 3)
    timeDate(as.character(ans)) }

USDecorationMemorialDay =
function(year = currentYear) {
    ans = year*10000 + 0530
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


CAVictoriaDay =
function(year = currentYear) {
    ans = .on.or.before(year, 5, 24, 1)
    timeDate(as.character(ans)) }

CAFamilyDay =
function(year = currentYear)
{   # Description:
    #   Adds the new Family Day
    # Note:
    #   Check ...
    #   www.sbhlawyers.com/media/ELD%20Oct%2019%202007%20Public%20Holidays%20and%20Family%20Day.pdf
    #   Family Day will fall on the third Monday of
    #       every February, beginning in 2008.
    # Family Day:
    charvec = paste(year, "02", "01", sep = "-")
    ans = timeNthNdayInMonth(charvec, nday = 1, nth = 3)
    # Return Value:
    ans
}

CACanadaDay =
function(year = currentYear) {
    ans = year*10000 + 0701
    timeDate(as.character(ans)) }

CACivicProvincialHoliday =
function(year = currentYear) {
    ans = .nth.of.nday(year, 8, 1, 1)
    timeDate(as.character(ans)) }

CALabourDay =
function(year = currentYear) {
    ans = .nth.of.nday(year, 9, 1, 1)
    timeDate(as.character(ans)) }

CAThanksgivingDay =
function(year = currentYear) {
    ans = .nth.of.nday(year, 10, 1, 2)
    timeDate(as.character(ans)) }

CaRemembranceDay =
function(year = currentYear) {
    ans = year*10000 + 1111
    timeDate(as.character(ans)) }


# ------------------------------------------------------------------------------


JPVernalEquinox <-
function(year = currentYear)
{
    # Author:
    #   Parlamis Franklin wrote:
    #   It's me again, with Japanese calendar minutiae I'm sure you've all
    #   been dying to brush up on. The fCalendar functions don't include
    #   the Japanese Vernal Equinox holiday. this is perhaps because there
    #   is no easy way to calculate it. at any rate, here's a function I
    #   wrote to fill the gap.

    # Notes:
    #   Origin and End Date data from
    #   http://aa.usno.navy.mil/data/docs/EarthSeasons.html
    #   The function Vernal.Equinox delivers correct values at the
    #   endpoints of the above data. There may be minor variances
    #   (+/- a few minutes) in the intermediate values, because the
    #   function linearly approximates a phenomenon that is apparently
    #   nonlinear in recorded time.

    Equinox.Origin <- timeCalendar(1992, 3, 20, 8, 48, 0, FinCenter = "GMT")
    Data.EndDate <- timeCalendar(2020, 3, 20, 3, 49, 0, FinCenter = "GMT")
    Total.Seconds <- as.numeric(Data.EndDate-Equinox.Origin)*24*60*60
    Mean.Annual.Seconds <- Total.Seconds / (atoms(Data.EndDate)$Y -
        atoms(Equinox.Origin)$Y)
    Vernal.Equinox <- function(year)
    {
        Equinox.Origin +
        unclass((year-atoms(Equinox.Origin)$Y)*Mean.Annual.Seconds)
    }

    # Nota bene: JP Vernal Equinox is celebrated when the equinox
    #   occurs in the Japanese time zone (see, e.g., 2006, where GMT
    #   Vernal Equinox is on 20 March, but Japanese Equinox holiday is
    #   21 March)

    # Return Value:
    trunc(timeDate(as.character(Vernal.Equinox(year)), FinCenter = "Tokyo"))
}


JPNewYearsDay =
function(year = currentYear) {
    ans = year*10000 + 0101
    timeDate(as.character(ans)) }

JPGantan =
function(year = currentYear) {
    ans = year*10000 + 0101
    timeDate(as.character(ans)) }

JPBankHolidayJan2 =
function(year = currentYear) {
    ans = year*10000 + 0102
    timeDate(as.character(ans)) }

JPBankHolidayJan3 =
function(year = currentYear) {
    ans = year*10000 + 0103
    timeDate(as.character(ans)) }

JPComingOfAgeDay =
function(year = currentYear) {
    ans = year*10000 + 0115
    timeDate(as.character(ans)) }

JPSeijinNoHi =
function(year = currentYear) {
    ans = year*10000 + 0115
    timeDate(as.character(ans)) }

JPNatFoundationDay =
function(year = currentYear) {
    ans =year*10000 + 0211
    timeDate(as.character(ans)) }

JPKenkokuKinenNoHi =
function(year = currentYear) {
    ans = year*10000 + 0211
    timeDate(as.character(ans)) }

JPGreeneryDay =
function(year = currentYear) {
    ans = year*10000 + 0429
    timeDate(as.character(ans)) }

JPMidoriNoHi =
function(year = currentYear) {
    ans = year*10000 + 0429
    timeDate(as.character(ans)) }

JPConstitutionDay =
function(year = currentYear) {
    ans = year*10000 + 0503
    timeDate(as.character(ans)) }

JPKenpouKinenBi =
function(year = currentYear) {
    ans = year*10000 + 0503
    timeDate(as.character(ans)) }

JPNationHoliday =
function(year = currentYear) {
    ans = year*10000 + 0504
    timeDate(as.character(ans)) }

JPKokuminNoKyujitu =
function(year = currentYear) {
    ans = year*10000 + 0504
    timeDate(as.character(ans)) }

JPChildrensDay =
function(year = currentYear) {
    ans = year*10000 + 0505
    timeDate(as.character(ans)) }

JPKodomoNoHi =
function(year = currentYear) {
    ans = year*10000 + 0505
    timeDate(as.character(ans)) }

JPMarineDay =
function(year = currentYear) {
    ans = year*10000 + 0720
    timeDate(as.character(ans)) }

JPUmiNoHi =
function(year = currentYear) {
    ans = year*10000 + 0720
    timeDate(as.character(ans)) }

JPRespectForTheAgedDay =
function(year = currentYear) {
    ans = year*10000 + 0915
    timeDate(as.character(ans)) }

JPKeirouNOhi =
function(year = currentYear) {
    ans = year*10000 + 0915
    timeDate(as.character(ans)) }

JPAutumnalEquinox =
function(year = currentYear) {
    ans = year*10000 + 0924
    timeDate(as.character(ans)) }

JPShuubunNoHi =
function(year = currentYear) {
    ans =year*10000 + 0924
    timeDate(as.character(ans)) }

JPHealthandSportsDay =
function(year = currentYear) {
    ans = year*10000 + 1010
    timeDate(as.character(ans)) }

JPTaiikuNoHi =
function(year = currentYear) {
    ans = year*10000 + 1010
    timeDate(as.character(ans)) }

JPNationalCultureDay =
function(year = currentYear) {
    ans = year*10000 + 1103
    timeDate(as.character(ans)) }

JPBunkaNoHi =
function(year = currentYear) {
    ans = year*10000 + 1103
    timeDate(as.character(ans)) }

JPThanksgivingDay =
function(year = currentYear) {
    ans = year*10000 + 1123
    timeDate(as.character(ans)) }

JPKinrouKanshaNoHi =
function(year = currentYear) {
    ans = year*10000 + 1123
    timeDate(as.character(ans)) }

JPEmperorsBirthday =
function(year = currentYear) {
    ans = year*10000 + 1123
    timeDate(as.character(ans)) }

JPTennouTanjyouBi =
function(year = currentYear) {
    ans = year*10000 + 1123
    timeDate(as.character(ans)) }

JPBankHolidayDec31 =
function(year = currentYear) {
    ans = year*10000 + 1231
    timeDate(as.character(ans)) }


################################################################################

