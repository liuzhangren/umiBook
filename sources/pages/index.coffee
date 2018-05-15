### eslint-disable import/first ###
import cfxify from 'cfx.react.dom'
import data from '../test/operateData'
import {
  Menu
} from 'antd'
MenuItem = Menu.Item
SubMenu = Menu.SubMenu
CFX = cfxify {
  Menu
  MenuItem
  SubMenu
}
# data = [
#   title: 'parent 1'
#   child: [
#     'child 1'
#     'child 2'
#   ]
# ]
export default ->

  {
    c_Menu
    c_MenuItem
    c_SubMenu
  } = CFX

  c_Menu
    defaultselectdkeys: ['1']
    defaultopenkeys: ['sub1']
    mode: 'inline'
    theme: 'dark'
    style:
      width: '150px'
      height: '100vh'
  ,
    data.reduce (r, c, i) =>
      [
        r...
        c_SubMenu
          key: "parent #{i}"
          title: c.title
        ,
          if c.child.length > 0
            c.child.reduce (r,c,i) =>
              [
                r...
                c_MenuItem
                  key: "child #{i}"
                  , c
              ]
            , []
          else
            []
      ]
    , []
    # c_SubMenu
    #   key: 'parent 1'
    #   title: 'parent 1'
    # ,
    #   c_MenuItem
    #     key: '1'
    #   , 'child 1'

    # c_SubMenu
    #   key: 'parent 2'
    #   title: 'parent 2'
    # ,
    #   c_MenuItem
    #     key: '2'
    #   , 'child 1'
    
    # c_SubMenu
    #   key: 'parent 3'
    #   title: 'parent 3'
    # ,
    #   c_MenuItem
    #     key: '3'
    #   , 'child 1'