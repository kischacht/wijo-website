#Daten einlesen und sortieren

who <- read.csv("C:\\Users\\Kira\\OneDrive\\SHK WiJo\\whoiswho.csv",
                header = TRUE)
who <- dplyr::arrange(who, name)

#Marker

is.start <- LETTERS %in% unique(substr(who$name, 1,1))
starts <- ifelse(is.start == FALSE, LETTERS, NA)
starts[is.na(starts)] <- paste("<a href='#", unique(substr(who$name, 1,1)),
                                 "'>", unique(substr(who$name, 1,1)), "</a>", sep = "")
cat("<h2>",starts, "</h2>\n\n",
    file = "C:\\Users\\Kira\\OneDrive\\SHK WiJo\\whoiswho-html.txt",
    append = TRUE)

# Tabelle

cat("<table>\n",
    paste("<tr>\n",
          "<td>", ifelse(is.na(who$bild), "", who$bild), "</td>\n",
          "<td>", "<h2 id='", substr(who$name, 1,1), "'><b>", who$name, "</b></h2>",
          "<h3>", who$beruf, " | <em>", who$ort, "</em></h3><br>",
          "<h4><b>Twitter:</b> <a href='", who$twitter.url, "'>", who$twitter.handle,"</a></h4>",
          "<h4><b>Website:</b> <a href='", who$website.url, "'>", who$website.titel,"</a></h4>",
          "<h4><b>Portrait:</b> <a href='", who$portrait.url, "'>", who$potrait.titel,"</a></h4>",
          "</td>\n",
          "</tr>\n",
          sep = ""
          ), 
    "\n</table>",
    file = "C:\\Users\\Kira\\OneDrive\\SHK WiJo\\whoiswho-html.txt",
    append = TRUE)



