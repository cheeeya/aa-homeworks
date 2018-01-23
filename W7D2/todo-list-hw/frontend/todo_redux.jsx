import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

// const addLoggingToDispatch = (store) => {
//   const storeDispatch = store.dispatch;
//   return function(action) {
//     console.log("Before action: ", store.getState());
//     console.log("Action:", action);
//     storeDispatch(action);
//     console.log("After action: ", store.getState());
//   };
// }

//ES6 syntax not working
// const addLoggingToDispatch = store => {
//   return next => {
//     return action => {
//       console.log("Before action: ", store.getState());
//       console.log("Action: ", action);
//       next(action);
//       console.log("After action: ", store.getState());
//     }
//   }
// };
//
// const applyMiddlewares = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach((middleware) => {
//     dispatch = middleware(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// };


document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);
  // store.dispatch = addLoggingToDispatch(store);
  // store = applyMiddlewares(store, addLoggingToDispatch);
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
