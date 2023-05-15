# Point cloud cleaner
Quando si raccolgono dati dai dispositivi di scansione, la point cloud risultante tende a contenere rumore e artefatti che si vorrebbero rimuovere, cioè che non fanno parte dell'oggetto preso in considerazione. Nel caso di presenza massiva di outlier e punti estranei all'oggetto, la generazione della mesh a partire dalla point cloud potrebbe risultare imprecisa rispetto all'oggetto nella realtà. Quindi vanno effettuate delle operazioni di pulizia affinché la point cloud, e successivamente anche la mesh, rispecchino il più possibile l'oggetto preso in considerazione.
## Requisiti
- Python 3
- NumPy
- open3D

Abbiamo testato il nostro codice su Windows 10/11 creando un enviroment [Anaconda](https://www.anaconda.com/)/[Miniconda](https://docs.conda.io/en/latest/miniconda.html).

## Getting Started
Clonare la repository:
```
git clone https://github.com/ChiaraGruosso/point_cloud_cleaner.git
```
Installare la libreria open3D utilizzando il comando:
```
pip install open3d
```
Intallare la libreria NumPy utilizzando il comando:
```
pip install numpy
```
Per poter eseguire il codice python contenuto nei file `.ipynb` utilizzare un IDE, Google Colab o Jupyter Notebook.

## Metodo e risultati
Per eseguire i vari esempi di pulizia della point cloud sono disponibili dei Jupyter Notebook e dei file `.ply` che rappresentano le point cloud iniziali necessarie per avviare il codice. Queste point cloud sono state ottenute con il software [Meshroom](https://alicevision.org/#meshroom) dando in input i frame estrapolati da un video dell'oggetto preso in considerazione. 

Per l'estrapolazione dei frame è stato utilizzato il file `extract_frames.m`.

Per effettuare la fase finale di calcolo dell'errore commesso è stato costruito il modello 3D dell'oggetto preso in considerazione utilizzando il software [Blender](https://www.blender.org/). 

I file `.blend` presenti nelle cartelle contengono il modello 3D costruito e la mesh ottenuta dalla pulizia della point cloud di partenza.

I risultati qualitativi ottenuti sono presenti nelle sotto-cartelle `risultati` mentre, per quelli quantitativi, è presente il calcolo dell'errore al termine delle operazioni di pulizia nei file `.ipynb`.
