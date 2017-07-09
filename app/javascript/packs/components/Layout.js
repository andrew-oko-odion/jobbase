import React from 'react'
import ReactDOM from 'react-dom'
import Index from './Index'
import Education from './Education'

class Layout extends React.Component {
    constructor(props)
    {
	super(props);
    }
    
    render()
    {
	return (
	    <div>
	    <Education />
	    </div>
	);
    }

}



export default Layout
