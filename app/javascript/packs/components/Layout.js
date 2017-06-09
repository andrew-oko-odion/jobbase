import React from 'react'
import ReactDOM from 'react-dom'
import Index from './Index'

class Layout extends React.Component {
    constructor(props)
    {
	super(props);
    }
    
    render()
    {
	return (
	    <div>
	    <Index />
	    </div>
	);
    }

}



export default Layout
