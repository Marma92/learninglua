--[[ 
    Let's play with functions ! 
    The final result is printing a random card
]]--


function pickACard()
    local number = math.random(1, 13)
    local cardType = math.random(1, 4)
    return number, cardType
end

function printACard(number, type)
    local cn = printACardNumber(number)
    local ct = printACardType(type)
    local card = "\
    +-----------------+\n\
    | "..cn.."              |\n\
    |                 |\n\
    |                 |\n\
    |        "..ct.."        |\n\
    |                 |\n\
    |                 |\n\
    |              "..cn.." |\n\
    +-----------------+\n"
    print(card)
end

function printACardNumber(number)
    local cardNumbers = 
    {
        [1] = "A ",
        [2] = "2 ",
        [3] = "3 ",
        [4] = "4 ",
        [5] = "5 ",
        [6] = "6 ",
        [7] = "7 ",
        [8] = "8 ",
        [9] = "9 ",
        [10] = "10",
        [11] = "J ",
        [12] = "Q ",
        [13] = "K "
    }
    if cardNumbers[number] then
        return cardNumbers[number]
    else
        return "error"
    end
end

function printACardType(type)
    local cardType = {
        [1] = "♥",
        [2] = "♦",
        [3] = "♣",
        [4] = "♠"
    }
    if cardType[type] then
        return cardType[type]
    else
        return "error"
    end
end

printACard(pickACard())