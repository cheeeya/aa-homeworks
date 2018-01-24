import React from 'react';

import GiphysIndexItem from './giphys_index_item';

class GiphysIndex extends React.Component {
  constructor(props) {
    super(props);
    this.props = props;
  }

  render() {
    const giphyItems = this.props.giphys.map((giphy) => {
      return (
        <GiphysIndexItem
          giphy={giphy}
          key={giphy.id}
        />
      );
    });

    return (
      <ul>
        { giphyItems }
      </ul>
    );
  }
}

export default GiphysIndex;
