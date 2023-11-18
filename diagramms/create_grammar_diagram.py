from schemdraw import flow
import schemdraw

with schemdraw.Drawing() as d:
    flow.Start().label('Start').right().loop('Top Loop', start=True).down()
    d.add(flow.Decision().label('Decision').right())
