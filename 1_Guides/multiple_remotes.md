Um mehrere Remotes im gleichen Projekt zu haben, damit ihr euren Stand in euer eigenes Repo pushen aber auch von diesem Repo updaten könnt, befolgt die folgenden Schritte:

1. Klont dieses Repo
2. Entfernt die "origin"-Remote:
```
git remote rm origin
```
3. Fügt eure eigenes Repo als "origin" hinzu:
```
git remote add origin https://git.company.com/me/repo
```
4. Fügt dieses Repo als zweite remote hinzu:
```
git remote add bonk https://github.com/Bonk-Army/Template-LaTeX_PraktischeArbeit
```
5. Ihr könnt mit eurem eigenen Repo nun ganz normal pullen, pushen, whatever
6. Wenn ihr den neusten Stand aus diesem Repo ziehen wollt, führt den folgenden Befehl aus:
```
git pull bonk master
```
7. ACHTUNG! NICHT auf die "bonk" remote pushen, sonst landen da vermutlich n paar commits, die hier nicht hin sollen. Ich zeig deshalb hier auch gar nicht, wie das gehen würde. Lasst es einfach.
