## flowchart rate
### with modifications as suggested by Tina maám
library(DiagrammeR)
grViz(diagram = "digraph flowchart {
  node [fontname = arial, shape = rectangle,fontsize = 12]
  tab1 [label = '@@1']
  tab2 [label = '@@2']
  tab3 [label = '@@3']
  tab4 [label = '@@4']
  tab5 [label = '@@5']
  tab6 [label = '@@6']
  tab7 [label = '@@7']
  tab8 [label = '@@8']
  tab9 [label = '@@9']
  tab10[label = '@@10']
  tab11[label = '@@11']
  tab12[label = '@@12']
  tab13[label = '@@13']
  tab14[label = '@@14']
  tab15[label = '@@15']

  
  tab1 -> tab2;tab1 -> tab3;tab2 ->tab6;tab2 -> tab4;tab4 ->tab7;tab4 ->tab5;tab5->tab9;tab5->tab8;
  tab8 -> tab10; tab8-> tab11; tab10 -> tab12; tab10 -> tab13; tab9->tab14;tab5->tab15
}
  
  [1]: 'MA or trio based?'
  [2]: 'Covers whole Genome?'    
  [3]: 'Reject' 
  [4]: 'Mutation in DNA replication & repair system?'
  [5]: 'Grown under WT conditions?'
  [6]: 'Reject'
  [7]: 'Reject'
  [8]: 'Multiple datasets?'
  [9]: 'single dataset'
  [10]: 'Largest scale?'
  [11]: 'Selected'
  [12]: 'Selected'
  [13]: 'Rejected'
  [14]: 'Selected'
  [15]: 'Rejected'
  ")
