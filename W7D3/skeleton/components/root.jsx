import React from 'react';
import { Provider } from 'react-redux';

import GiphysSearchContainer from './giphys_search_container';

const Root = ({ store }) => {
  return (
    <Provider store={store}>
      <GiphysSearchContainer />
    </Provider>
  );
};

// class Root extends React.Component {
//   constructor(props) {
//     super(props);
//     this.store = props.store;
//   }
//
//   render(){
//     return (
//       <Provider store={ this.store }>
//         <GiphysSearchContainer />
//       </Provider>
//     );
//   }
// }

export default Root;
