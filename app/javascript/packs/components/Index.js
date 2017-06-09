import React from 'react'
import ReactDOM from 'react-dom'

class Index extends React.Component {
    constructor(props)
    {
	super(props);
	{text: "Hello world"} ;
	this.handleClick = this.handleClick.bind(this);
    }


    handleClick(e) {
	this.setState({updateui: "" });
    }

    render()
    {
	return (
	    <div>
	    <button className="ui right floated compact button"><i className="teal plus icon"></i> </button>
	    <button className="ui right floated compact button"><i className="red remove icon"></i> </button>
	    <h2 className="ui header"> Education </h2>
	    {"Bachelor of Science Computer Science University of Benin"}
	    <h4 className="blue header"> {"www.uniben.edu"} </h4> 
	    
	    </div>
	);
    }

}


class Update extends React.Component {

    constructor(props) {
	super(props);
	this.state = { updateui: "" } ;
	this.handleChange = this.handleChange.bind(this);
	this.handleClick = this.handleClick.bind(this);
    }

    handleClick(e) {
	this.setState({updateui: "" });
    }
    
    handleChange(e) {
	this.setState({updateui: e.target.value });
    }

    render() {
	return (
	    <div> 
	    <h1> {this.state.updateui} </h1>
	    <button onClick={this.handleClick} >Click Me</button>
	    <Newcomponent text="hello world" />
	    <Childcomponent update= {this.handleChange} />
	    <Betweencomponent>Hello</Betweencomponent>
	    </div>
	);
    }
    
}


class Newcomponent extends React.Component {

    constructor(props)
    {
	super(props);
    }
    
    render()
    {
	return (
	    <div>
	    <h1> {this.props.text} </h1>
	    </div>
	);
    }

}

const Childcomponent = (props) =>
    <div> 
<input type="text" onChange={props.update} />
</div>
  
const Betweencomponent = (props) =>
    <div>
<button> {props.children} </button>
</div>

export default Index
