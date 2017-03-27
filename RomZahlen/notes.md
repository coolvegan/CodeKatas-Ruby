# Reflektion
Die Code Kata macht mir sehr große Probleme. Ich meine die Kata in der
ich Dezimalzahlen in römische Zahlen umrechnen soll.

Die Ziffern 1,2,3 sind einfach umgesetzt.
Auch die Zehn, Zwanzig, Dreißig ist einfach.

Die 4, 5, 6 bereiten Probleme.

Die 4 ist gleich IV.
Die 5 ist gleich V.
Die 6 ist gleich VI.

Die 40 ist gleich XL.
Die 50 ist gleich L.
Die 60 ist gleich LX.

``` ruby
hash = {1: "I", 5: "V", 10: "X", 50: "L"}
```
### Warum bereiten mir 4,5,6 und 40,50, 60 Probleme?
Was ist daran so schwer?

Wie könnte ich es für den Einzelfall lösen?
Ich könnte sagen IIII = IX, wenn meine Eingabe < 10 ist.
Ich könnte sagen IIIIII = XI, wenn meine Eingabe < 10 ist.
Ich könnte sagen, dass IIIII = V ist, wenn meine Eingabe kleiner 10 ist.
Ich könnte sagen, dass 4 = -1+5 ist, wenn meine Eingabe kleiner 10 ist.
Ich könnte sagen, wenn meine Zahl kleiner als 5 ist, dass ich von hinten nach vorne schaue, und die ersten 5 I's zu einem X substituiere.
Ich könnte schauen wie der Aufbau einer Dezimalzahl ist und Gesetzmässigkeiten zur Problemlösung ausnutzen. Zum Beispiel ist eine Zahl kleiner als 10, null mal durch 10 teilbar.
Ich könnte versuchen das Muster klarer aufzuzeigen. Ich könnte mir das Muster erklären.
Ich könnte mit zwei Arrays arbeiten. Ein Array hat die Dezimalzahlen. Das andere die römischen Zahlen.

Kann ich den Einzelfall generalisieren?

# Rom2.rb
für jedes Element im Array notiere das Element und den Index
Wenn meine gesuchte Zahl größer als das aktuelle Element im Array
Wenn mein gesuchtes Element kleiner als der Vorgänger des Nachfolgers im Array ist und der Index um 1 erhöht, die Gesamtanzahl aller Elemente im Array nicht überschreitet
Wenn x kleiner als der Vorgänger des Nachfolgers, dann
erstelle eine Zeichenkette tmp x mal vergrößert um den aktuellen Index Wert im Rom Array und wenn nicht, dann erstelle eine Zeichenkette die das aktuelle Index zurückliefert + den Nachfolger

# Warum habe ich gerade Probleme, die Aufgabe zu lösen?

Ich finde die passende Fallunterscheidung in der aktuellen Fallunterscheidung nicht.

Wenn meine Zahl größer als fünf und kleiner als zehn, dann
ist der nachfolger meiner Zahl, VI

# Lösungsversuch
Ich könnte sagen, wenn meine gesuchte Zahl >= meine gewählte zahl im array + der vorgänger und kleiner als der nachfolger im array, dann ist
meine tmp = rom[index]
(x-dez[index]).times do
  tmp+=rom[(index/2)-1]
end

# Problem
Ich bin verwirrt. Meine Lösungsstrategie ist total zerbrochen. Anstatt
zu überlegen, probiere ich nur noch blind aus.

# Lösungsversuch
Was ist wenn es ungünstig ist an der ersten Position des Arrays zu starten?

Kann ich vielleicht mehr Erfolg haben, wenn ich alle zwei Stellen
durch iteriere?


# Warum funktioniert rom3.rb für mich nicht?
In Rom3 starte ich bei Position 2 des Arrays und springe bei der nächsten
Iteration zu Position 4. Ich weiß nicht wie ich unterscheiden muss,
dass es in Position 4 schon um L geht, während es in Position 2 um V geht. Bei der ersten Iteration geht es um 10^0. Bei der zweiten Iteration
um 10^1. Dabei ist 10^0 oder 10^1 die Zahl, um die ich die Bedingung
x < dez[i] - 10^p einschränken muss


# Lösungsansatz
Kann es sein, dass es am schlausten ist, jede Zahl in eine einzelne Dezimalzahl zu aufzutrennen?
