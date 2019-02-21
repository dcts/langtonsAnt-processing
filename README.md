# langtonsAnt-processing
[Langton's Ant](https://en.wikipedia.org/wiki/Langton%27s_ant) implemented in [processing](https://processing.org/). Coded at Processing Community Day (09.02.2019 @ HeK Basel). To start just run the scetch `langtonsAnt.pde`. You can change some parameters if you like:
- **nbrOfCols**: determines the nbr of cells on the x-axis
- **nbrOfRows**: determines the nbr of cells on the y-axis
- **pxPerCell**:  how big is each cell? (min value allowed is 2)
- **renderSpeed**: set between 1 (slow) and 5000 (fast)

The size of the window is determined by these parameters (`windowWidth = nbrOfCols*pxPerCell` and `windowHeight = nbrOfRows*pxPerCell`). If the windowsize is higher than your screensize the algorithm will not start and a message is displayed to the console. Have fun!
