local weekDaysAsciiArtDictionary = require("constants.weekdays")

local function getWeekDayAscii()
    local weekdayAsciiArt = weekDaysAsciiArtDictionary[os.date("*t").wday]
    local date = os.date("%Y-%m-%d")

    return weekdayAsciiArt .. "\n" .. date -- Concatenates ASCII with the date
end

return getWeekDayAscii
