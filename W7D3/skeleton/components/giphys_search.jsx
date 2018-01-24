import React from 'react';
import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: ""
    }
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    event.preventDefault();
    this.setState({ searchTerm: event.target.value });
  }

  handleSubmit(event) {
    event.preventDefault();
    this.props.fetchSearchGiphys(this.state.searchTerm).then ( () => this.setState({ searchTerm: "" }));
  }

  render() {
    const { searchTerm } = this.state;
    return (
      <div>
        <GiphysIndex giphys={this.props.giphys}/>
        <form>
          <label>
            <input onChange={this.handleChange} value={searchTerm}></input>
          </label>
          <button onClick={this.handleSubmit}>Search</button>
        </form>
      </div>
    )
  }
}

export default GiphysSearch;
