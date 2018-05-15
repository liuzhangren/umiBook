### eslint-disable import/first ###
import cfxify from 'cfx.react.dom'

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

export default ->

  {
    c_Menu
    c_MenuItem
    c_SubMenu
  } = CFX

  c_Menu
    defaultSelectdKeys: ['1']
    defaultOpenKeys: ['sub1']
    mode: 'inline'
    theme: 'dark'
    style:
      width: '150px'
      height: '100vh'
  ,
    c_SubMenu
      key: 'parent 1'
      title: 'parent 1'
    ,
      c_MenuItem
        key: '1'
      , 'child 1'

    c_SubMenu
      key: 'parent 2'
      title: 'parent 2'
    ,
      c_MenuItem
        key: '2'
      , 'child 1'
    
    c_SubMenu
      key: 'parent 3'
      title: 'parent 3'
    ,
      c_MenuItem
        key: '3'
      , 'child 1'