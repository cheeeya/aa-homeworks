import React from 'react';

class GiphysIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.props = props;
  }

  render() {
    const { giphy } = this.props;
    return (
      <li>{ giphy.slug }</li>
    );
  }
}

export default GiphysIndexItem;
