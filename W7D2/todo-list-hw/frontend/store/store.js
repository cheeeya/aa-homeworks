import { createStore } from 'redux';
import rootReducer from '../reducers/root_reducer';
import { applyMiddleware } from 'redux';

const configureStore = (preloadedState = {}) => {
  const store = createStore(rootReducer, preloadedState, applyMiddleware(addLoggingToDispatch, bonusMiddleware));
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

const addLoggingToDispatch = store => {
  return next => {
    return action => {
      console.log("Before action: ", store.getState());
      console.log("Action: ", action);
      console.log("Next: ", next);
      next(action);
      console.log("After action: ", store.getState());
    }
  }
};

const bonusMiddleware = store => next => action => {
  console.log("Bonus Next: ", next);
  next(action);
}

export default configureStore;
