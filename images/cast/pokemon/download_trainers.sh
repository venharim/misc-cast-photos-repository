#!/bin/bash
trainers=("Aaron" "Aarune" "Acerola" "Agatha" "Alder" "Aliana" "Allister" "Anabel" "Archer" "Archie" "Argenta" "Ariana" "Avery" "Barry" "Bea" "Bede" "Benga" "Bertha" "Bianca" "Birch" "Blaine" "Blue" "Brandon" "Brawly" "Brendan" "Brock" "Bruno" "Brycen" "Bryony" "Buck" "Bugsy" "Burgh" "Burnet" "Byron" "Caitlin" "Calem" "Candice" "Celosia" "Charon" "Cheren" "Cheryl" "Chili" "Chuck" "Cilan" "Clair" "Clay" "Clemont" "Colress" "Courtney" "Crasher Wake" "Cress" "Curtis" "Cynthia" "Cyrus" "Dahlia" "Dana" "Darach" "Dawn" "Dexio" "Diantha" "Drake" "Drasna" "Drayden" "Dulse" "Elesa" "Elio" "Elm" "Emmet" "Erika" "Ethan" "Eusine" "Evelyn" "Faba" "Falkner" "Fantina" "Fennel" "Flannery" "Flint" "Gardenia" "Ghetsis" "Giovanni" "Glacia" "Gladion" "Gloria" "Gordie" "Grant" "Greta" "Grimsley" "Guzma" "Hala" "Hapu" "Hau" "Hilbert" "Hilda" "Honey" "Hop" "Hugh" "Ilima" "Ingo" "Iris" "James" "Janine" "Jasmine" "Jessie" "Juan" "Juniper" "Jupiter" "Kabu" "Kahili" "Karen" "Kiawe" "Klara" "Koga" "Korrina" "Kris" "Kukui" "Lana" "Lance" "Leaf" "Lenora" "Leon" "Lillie" "Lisia" "Liza" "Looker" "Lorelei" "Lt. Surge" "Lucas" "Lucian" "Lucy" "Lusamine" "Lyra" "Lysandre" "Mable" "Magnolia" "Mallow" "Malva" "Marley" "Marlon" "Marnie" "Mars" "Marshal" "Matt" "Maxie" "May" "Maylene" "Melony" "Milo" "Mina" "Mira" "Miror B." "Misty" "Mohn" "Molayne" "Moon" "Morgan" "Morty" "Mustard" "N" "Nanu" "Nate" "Nessa" "Nita" "Noland" "Norman" "Oak" "Oleana" "Olivia" "Olympia" "Opal" "Palmer" "Petrel" "Phoebe" "Phyco" "Piers" "Plumeria" "Proton" "Pryce" "Raihan" "Ramos" "Ray" "Red" "Riley" "Roark" "Rosa" "Rose" "Rowan" "Roxanne" "Roxie" "Ryuki" "Sabrina" "Saturn" "Selene" "Serena" "Shauna" "Shauntal" "Shelly" "Sidney" "Siebold" "Silver" "Sina" "Skyla" "Soliera" "Sonia" "Sophocles" "Spenser" "Steven" "Sycamore" "Tabitha" "Tate" "Thorton" "Tierno" "Trevor" "Tucker" "Valerie" "Victor" "Viola" "Volkner" "Wallace" "Wally" "Wattson" "Whitney" "Wicke" "Wikstrom" "Will" "Winona" "Wulfric" "Xerosic" "Yancy" "Zinnia" "Zinzolin" "Zossie")

count=0
for trainer in "${trainers[@]}"; do
    filename="${trainer// /_}.png"
    url="https://raw.githubusercontent.com/spaulmark/img/master/Pokemon%20Trainers/${trainer// /%20}.png"
    curl -s "$url" -o "$filename"
    ((count++))
    if [ $((count % 20)) -eq 0 ]; then
        echo "Downloaded $count/233 trainers..."
    fi
done
echo "Downloaded all $count trainers!"
