var ShopApp = React.createClass({
  
  propTypes: {
    title: React.PropTypes.number,
  },
  
  getInitialState: function() {
    return { items: [{id: 1}, {id: 2}, {id:3}, {id:4}, {id:5}, {id:6}] };
  },
  
  getDefaultProps: function() {
    return { query: "Originals" };
  },
  
  render: function() {
    console.log(this.props.query);
    return (
      <div className='shopApp-container'>
        <div className='shopApp-header'> 
          <div className="navigation">
                <ul>
                  <a href="/shop">Originals</a>
                  <a href="/shop">Women</a>
                  <a href="/shop">Men</a>
                  <a href="/shop">About</a>
                </ul>
            </div>
          <h3> {this.props.query} </h3> 
        </div>
        <ul className="items_list">
          {this.state.items.map(function (item) {
            return (<li key={item.id}> <ItemBox id={item.id} /> </li>);
          }) }
        </ul>
        
      </div>
    );
  }
});

var ItemBox = React.createClass({
  
  render: function() {
    return (
    <div className='item_container'>
      <div className='item_desc'> <p> Item Name {this.props.id}; $100</p> </div>
      <img src="http://www.myfamily.it/content/images/thumbs/0024087.jpeg"></img>
    </div>
    );
  }
});