team <- data.frame(  
      long = c(8.560453, 11.554090, 13.398040, 13.381030, 10.004017, 8.547561),
      lat = c(47.417563, 48.144240, 52.507620, 52.505190, 53.545762, 47.364939),
      name = c("srf", "br", "mopo", "zeit", "spon", "nzz"),
      popup = c("<a href='http://www.srf.ch/news/srf-data'><span style='color: green; font-size:9pt'><strong>SRF Data</strong></span></a><br>Zürich<br>Leitung: Sylke Gruhnwald<br><p><img class='alignright' src='http://www.festivaldelgiornalismo.com/pictures/user/medium/1/1911_47UQW.jpg' alt='sylke' width='80%' height='80%'/></p>",
          "<a href='http://www.br.de/extra/br-data/index.html'><span style='color: green; font-size:9pt'><strong>BR Data</strong></span></a><br>München<br>Leitung: Uli Koeppen<p><img class='alignright' src='http://blog.br.de/abi2011/wp-content/themes/abi2011/data/ulrike-koeppen_200.jpg' alt='uli' width='90%' height='90%'/></p>",
          "<a href='http://www.morgenpost.de/interaktiv/'><span style='color: green; font-size:9pt'><strong>Interaktiv-Team MoPo</strong></span></a><br>Berlin<br>Leitung: Julius Tröger<p><img class='alignright' src='https://pbs.twimg.com/profile_images/548995319434723330/ZdqKy8ug.jpeg' alt='julius' width='80%' height='80%'/></p>",
          "<a href='http://www.zeit.de/datenjournalismus'><span style='color: green; font-size:9pt'><strong>Datenredaktion Zeit online</strong></span></a><br>Berlin<br>Leitung: Sascha Venohr<p><img class='alignright' src='http://community.zeit.de/sites/default/files/pictures/picture-211790-1446728989.jpg' alt='sascha' width='70%' height='70%'/></p>",
          "<a href='http://www.spiegel.de/thema/daten/'><span style='color: green; font-size:9pt'><strong>Spiegel Online Datenlese</strong></span></a><br>Hamburg<br>Leitung: Christina Elmer<p><img class='alignright' src='http://onmedia.dw-akademie.com/english/files/IMG_0340.jpg' alt='christina' width='70%' height='70%'/></p>",
          "<a href='http://www.nzz.ch/data/'><span style='color: green; font-size:9pt'><strong>NZZ Data</strong></span></a><br>Zürich<br>Leitung: Sylke Gruhnwald (?)<p><img class='alignright' src='http://www.lpr-forum-medienzukunft.de/files/gruhnwald_sylke_huenerfauth_klein.png' alt='sylke' width='60%' height='60%'/></p>")
      )


'mapicon <- c(
      br = makeIcon(iconUrl = "br.png", 30, 30),
      srf = makeIcon(iconUrl = "srf.jpg", 40, 40),
      mopo = makeIcon(iconUrl = "mopo.jpg", 30, 30),
      zeit = makeIcon(iconUrl = "zeit.png", 60, 60),
      journo = makeIcon(iconUrl = "journo.png", 30, 30),
      spon = makeIcon(iconUrl = "spon.jpg", 30, 30),
      ok = makeIcon(iconUrl= "ok.png", 15, 15),
      tu = makeIcon(iconUrl= "tu.png", 20, 20),
      nzz = makeIcon(iconUrl= "nzz.jpg", 20, 20)
)'
opendata <- data.frame(  
            long = c(7.417445, 9.993682, 13.382337, 11.629084, 7.630538, 6.748874, 6.638324, 6.773096, 
              7.144582, 6.900711, 7.094403, 8.690906, 9.479753, 11.576037, 12.379037, 8.681832, 
              13.747688, 12.940579, 11.011690, 9.227360, 9.173458, 9.954148, 8.405627, 11.568393,
              7.850041),
            lat = c(51.494049, 53.551085, 52.498534, 52.119520, 51.964971, 51.569299, 51.481628, 
              51.227698, 51.266420, 50.960162, 50.737410, 50.587295, 51.312384, 50.922167, 
              51.331725, 50.116395, 51.046866, 50.829905, 49.590018, 49.134316, 48.776427, 
              48.424874, 49.006257, 48.144718, 47.983412),
      name = factor(c("journo", rep("ok", 24))),
      popup = c("<a href='http://journocode.com/'><span style='color: green; font-size:9pt'><strong>journocode</strong></span></a> <br> Dortmund",
                "<a href='http://codefor.de/hamburg/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Hamburg",
                "<a href='http://codefor.de/berlin/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Berlin",
                "<a href='http://codefor.de/magdeburg/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Magdeburg",
                "<a href='http://codefor.de/muenster/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Münster",
                "<a href='http://codefor.de/ruhrgebiet/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Ruhrgebiet",
                "<a href='http://codefor.de/niederrhein/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Niederrhein",
                "<a href='http://codefor.de/duesseldorf/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Düsseldorf",
                "<a href='http://codefor.de/wuppertal/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Wuppertal",
                "<a href='http://codefor.de/koeln/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Köln",
                "<a href='http://codefor.de/bonn/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Bonn",
                "<a href='http://codefor.de/giessen/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Gießen",
                "<a href='http://codefor.de/kassel/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Kassel",
                "<a href='http://codefor.de/jena/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Jena",
                "<a href='http://codefor.de/leipzig/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Leipzig",
                "<a href='http://codefor.de/frankfurt/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Frankfurt",
                "<a href='http://codefor.de/dresden/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Dresden",
                "<a href='http://codefor.de/chemnitz/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Chemnitz",
                "<a href='http://codefor.de/erlangen/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Erlangen",
                "<a href='http://codefor.de/heilbronn/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Heilbronn",
                "<a href='http://codefor.de/stuttgart/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Stuttgart",
                "<a href='http://codefor.de/ulm/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Ulm",
                "<a href='http://codefor.de/karlsruhe/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Karlsruhe",
                "<a href='http://codefor.de/muenchen/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> München",
                "<a href='http://codefor.de/freiburg/'><span style='color: green; font-size:9pt'><strong>OK Lab</strong></span></a> <br> Freiburg")
      )

ausbildung <- data.frame(long = c(7.417798), lat = c(51.494564),
      name = factor("tu"),
      popup = c("<a href='http://www.wissenschaftsjournalismus.org/ba-zweitfach-datenanalyse.html'><span style='color: green; font-size:9pt'><strong>Studiengang ddj</strong></span></a> <br> Dortmund
            <br>Leitung: Holger Wormer<br><p><img class='alignright' src='http://journalistik.tu-dortmund.de/fileadmin/Bilder/Mitarbeiter/wormer.jpg'
            alt='holger' width='80%' height='80%' /></p>")
      )

ddj <- rbind(team = team, ausbildung = ausbildung, opendata = opendata)
ddj$type <- gsub("\\..*$", "", rownames(ddj))

write.csv(ddj, file = "C:\\Users\\Kira\\OneDrive\\SHK WiJo\\wijou\\data\\ddj.csv",
          row.names = FALSE, fileEncoding = "UTF-8")
