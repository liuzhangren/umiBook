
initData = [
    title: 'parent 1'
    child: [
      'child 1'
      'child 2'
    ]
  ,
    title: 'parent 2'
    child: [
      'child 1'
      'child 2'
    ]
]export default (parents,children) =>
  newTitle = initData.reduce (r, c) =>
    [
      r...
      c.title
    ]
  , []
  if parents in newTitle
    initData.reduce (r,c) =>
      [
        r...
        if c.title is parents
          {
            title: parents
            child: c.child.concat children
          }
        else c
      ]
    , []
  else
    temp = [
      title: parents
      child: children
    ]

    initData = [
      temp...
      initData...
    ]