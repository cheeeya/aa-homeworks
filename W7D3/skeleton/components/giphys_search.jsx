import React from 'react';
import ReactDOM from 'react-dom';
import GiphysIndex from './giphys_index';
import configureStore from '../store/store';

import { receiveSearchGiphys, fetchSearchGiphys } from '../actions/giphy_actions.js';


document.addEventListener("DOMContentLoaded", function(){
  const store = configureStore();
  window.store = store;
  window.fetchSearchGiphys = fetchSearchGiphys;
  window.receiveSearchGiphys = receiveSearchGiphys;
})
