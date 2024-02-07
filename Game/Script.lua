-- Variables
local enteredForest = false
local hasArtifact = false

-- storyline
function story(aName)
    if aName == "start" then
        playSound("nature.wav")
        setBackground("mysteriousForest.jpg")
        createTextfield("You find yourself at the edge of a mysterious forest.\nThe air is thick with magic. What will you do?")
        createButton("enterForest", "Enter the forest")
        createButton("ignoreForest", "Ignore the forest and continue your journey")
    elseif aName == "enterForest" then
        if not enteredForest then
            playSound("footstep.wav")
            enteredForest = true
        else
            playSound("rustle.wav")
        end
        CLS()
        playSound("footstep.wav")
        setBackground("enchantedGrove.jpg")
        createTextfield("As you enter the forest,\nyou discover an enchanted grove with ancient trees.")
        createButton("exploreGrove", "Explore the grove")
        createButton("leaveForest", "Leave the forest")
    elseif aName == "exploreGrove" then
        CLS()
        playSound("footstep.wav")
        setBackground("ancientTempleEntrance.jpg")
        createTextfield("In the heart of the grove,\nyou find the entrance to an ancient temple.")
        createButton("enterTemple", "Enter the temple")
        createButton("returnToGrove", "Return to the enchanted grove")
    elseif aName == "returnToGrove" then
        CLS()
        playSound("footstep.wav")
        createTextfield("You have decided to leave the grove alone.")
        createButton("leaveForest", "Leave the forest")
    elseif aName == "enterTemple" then
        CLS()
        playSound("footstep.wav")
        playSound("templeDoor.wav")
        setBackground("mysticalChamber.jpg")
        createTextfield("Inside the temple,\nyou discover a mystical chamber with a\nshimmering artifact.")
        if not hasArtifact then
            createButton("takeArtifact", "Take the magical artifact")
        end
        createButton("ignoreArtifact", "Ignore the artifact")
        createButton("exitTemple", "Leave the temple")
    elseif aName == "takeArtifact" then
        CLS()
        playSound("footstep.wav")
        playSound("magicSpell.wav")
        createTextfield("You cautiously take the magical artifact,\nfeeling its power.")
        hasArtifact = true
        createButton("exitTemple", "Leave the temple")
    elseif aName == "ignoreArtifact" then
        CLS()
        playSound("footstep.wav")
        createTextfield("You choose to leave the artifact behind.")
        createButton("exitTemple", "Leave the temple")
    elseif aName == "exitTemple" then
        CLS()
        playSound("footstep.wav")
        setBackground("exitForest.jpg")
        createTextfield("As you exit the temple,\nthe forest seems different,\nas if acknowledging your presence.")
        createButton("continueJourney", "Continue your journey")
    elseif aName == "leaveForest" then
        CLS()
        playSound("footstep.wav")
        setBackground("exitForest.jpg")
        createTextfield("You decide to leave the forest,\nwondering about the mysteries within.")
        createButton("continueJourney", "Continue your journey")
    elseif aName == "continueJourney" then
        CLS()
        playSound("footstep.wav")
        playSound("nature.wav")
        createTextfield("You continue your journey,\nnow wielding the magical artifact.")
        createButton("end", "Reach the end of your adventure")
    elseif aName == "end" then
        exitGame()
    elseif aName == "ignoreForest" then
        exitGame()
    end
end
