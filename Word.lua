shared.EngList = {
    vape = "Offsite Links",
    disco = "Offsite Links",
    gay = "Bullying",
    gey = "Bullying",
    gae = "Bullying",
    les = "Bullying",
    las = "Bullying",
    lez = "Bullying",
    hack = "Scamming",
    hax = "Scamming",
    exploit = "Scamming",
    hacker = "Scamming",
    haxer = "Scamming",
    hacks = "Scamming",
    report = "Bullying",
    get = "Offsite Links",
    client = "Offsite Links",
    l = "Bullying",
    loser = "Bullying",
    byfron = "Bullying",
    ban = "Bullying",
    kick = "Bullying",
    report = "Bullying",
    use = "Offsite Links",
    ez = "Bullying",
    noob = "Bullying",
    admin = "Bullying",
    ape = "Offsite Links",
    azura = "Offsite Links",
    boat = "Offsite Links",
    future = "Offsite Links",
    klaev1 = "Offsite Links",
    zac = "Offsite Links",
    koolaid = "Offsite Links",
    top = "Bullying",
    fat = "Bullying",
    mom = "Bullying",
    homeless = "Bullying",
    skill = "Bullying",
    black = "Bullying",
    getalife = "Bullying",
    record = "Bullying",
    yt = "Offsite Links",
    dizcourde = "Offsite Links",
    cheat = "Scamming",
    retard = "Swearing",
    bad = "Bullying",
    trash = "Bullying",
    nolife = "Bullying",
    bozo = "Bullying",
    lobby = "Bullying",
    kid = "Bullying",
    adopted = "Bullying",
    linlife = "Bullying",
    download = "Offsite Links",
    wizard = "Bullying",
    wisard = "Bullying",
    wiz = "Bullying",
    tmd = "Swearing",
    fk = "Swearing",
    fuco = "Swearing",
}
shared.ChinList = {}
local function FindR(t)
    local x = removerepeat(t:gsub("%W+", ""):lower())
    for e, v in pairs(shared.EngList) do
        if x:find(e) then 
            return v, e
        end
    end
    for i, v in pairs(shared.ChinList) do 
        if x:find(v) then return "Bullying", v end
    end
    return nil
end
shared.FindR = FindR