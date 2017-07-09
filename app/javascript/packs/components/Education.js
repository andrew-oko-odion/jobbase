import React from 'react'
import ReactDOM from 'react-dom'

class Education extends React.Component {
    constructor(props)
    {
	super(props);
	this.state = { educations: [], action: '', value: ''};
	this.handleChange = this.handleChange.bind(this);
	this.handleSubmit = this.handleSubmit.bind(this);
	this.handleAddClick = this.handleAddClick.bind(this);
	this.handleCancelClick = this.handleCancelClick.bind(this);
    }
    handleAddClick()
    {
	 this.setState({action: 'add' });
	// e.preventDefault();
	console.log('hello Add button clicked');
	console.log(this.state.action);
    }
    handleCancelClick()
    {
	console.log("hello I was clicked");
	this.setState({action: '' });
    }	    
    componentDidMount()
    {
    	$.get('http://localhost:3000/educations.json', (results) => {
    	    this.setState({
    		educations: results
    	    });
    	});
    }

    handleChange(event) {
	this.setState({value: event.target.value});
	console.log("change happened");
    }
    handleSubmit(event) {
	// alert('A name was submitted: ' + this.state.value);
	// alert('A name was submitted:');
	// event.preventDefault();
	console.log("submit clicked");
    }
    /* Returns the index Action */
    getIndex(){
	var arr = this.state.educations; 
	const Index = arr.map((val, i) =>
			      <div key={i}>
			      <AddButton toggle={this.handleAddClick}/>
			      <RemoveButton  />
			      <div> { val.school_name } </div>
			      <div> {val.school_website } </div>
			      <div className="ui divider"></div>
			      </div>
			     );
	return Index;
    }
    
    render()
    {	      
	return (
	    <div>
	    <h2 className="ui header"> Education </h2>
	    <RenderEducation data={this.getIndex()} action={this.state.action} onClick={this.handleCancelClick}
	    onSubmit={console.log("submit")} onChange={this.handleChange} />
	    </div>
	);				      
    }
}

function RenderEducation(props)
{
    const isAddEdu = props.action; 	
    if (isAddEdu == 'add')
    {
	return <CreateAction onClick={ props.onClick } onSubmit={props.onSubmit} onChange={props.onChange} value={props.value} /> ;
    }
    return <IndexAction data={props.data} /> ;
}

function CancelButton(props)
{
    return <button className="ui right floated button" onClick={props.onClick}>Cancel</button> ;
}

function CreateAction(props)
{
    return <AddForm onClick={props.onClick} onSubmit={props.onSubmit} onChang={props.onChange} value={props.value} /> ;
}

class AddForm extends React.Component {
    
    constructor(props)
    {
	super(props);
	// this.state = {value: ""} ;
	this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(event)
    {
	console.log("Submit clicked");
	event.preventDefault();
    }
    
    render(props)
    {
	return (
	    <div>
	    <form onSubmit={this.handleSubmit} className="ui form">
	    <div className="field">
	    <label>First Name</label>
	    <input type="text" name="first-name" placeholder="First Name" value={this.props.value}  onChange={this.props.onChange} />
	    </div>
	    <div className="field">
	    <label>Last Name</label>
	    <input type="text" name="last-name" placeholder="Last Name" />
	    </div>
	    <div className="field">
	    <div className="ui checkbox">
	    <input type="checkbox" tabIndex="0" className="hidden" />
	    <label>I agree to the Terms and Conditions</label>
	    </div>
	    </div>
	    <div className="field"> 
	    <input className="ui button" type="submit" value="Submit" />
	    <CancelButton onClick={this.props.onClick} />
	    </div>
	    </form>
	    </div>
	);
    }
}

const AddButton = (props) =>
      <button onClick={props.toggle} className="ui right floated compact button"><i className="teal plus icon"></i> </button>
const RemoveButton = (props) =>
      <div>
      {props.action} 
      <button className="ui right floated compact button"><i className="red remove icon"></i> </button>
      </div>

function IndexAction(props){
    return (
	<div>
	{ props.data }
	</div>
    );
}

const CreateForm = (props) =>
    <div className="ui form">
<form onSubmit={props.onSubmit} className="new_education" id="new_education" action="/educations" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="BikaesdkRqNawXjvmoQ3Uc/o889n7FLVLjnIwFUEjbrdZPQFX16oaCBwG5cNq6Bm8zqATXrE/tK1lHHY7g42AA==" />
<div className="field">
<label for="education_Education Type">Education type</label>
<select name="education[education_type_id]" id="education_education_type_id">
<option value="">Education Type</option>
<option value="1">Primary School</option>
<option value="2">Secondary School</option>
<option value="3">Tetrary School</option>
<option value="4">Masters</option>
<option value="5">PHD</option></select>
</div>
<div className="field">
<label for="education_School_Name">School name</label> 
<input placeholder="example University of Benin " type="text" name="education[school_name]" id="education_school_name" />
</div>
<div className="field">
<label for="education_Certificate_Name">Certificate name</label>
<input placeholder="example Bachelor of Science " type="text" name="education[certificate_title]" id="education_certificate_title" />
</div>

<div className="inline fields">
<div className="inline field">
<label for="education_Start Date">Start date</label> 
<select id="education_start_date_1i" name="education[start_date(1i)]">
<option value="2017" selected="selected">2017</option>
<option value="2016">2016</option>
<option value="2015">2015</option>
<option value="2014">2014</option>
<option value="2013">2013</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
<option value="2010">2010</option>
<option value="2009">2009</option>
<option value="2008">2008</option>
<option value="2007">2007</option>
<option value="2006">2006</option>
<option value="2005">2005</option>
<option value="2004">2004</option>
<option value="2003">2003</option>
<option value="2002">2002</option>
<option value="2001">2001</option>
<option value="2000">2000</option>
<option value="1999">1999</option>
<option value="1998">1998</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option>
<option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>
<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
<option value="1979">1979</option>
<option value="1978">1978</option>
<option value="1977">1977</option>
<option value="1976">1976</option>
<option value="1975">1975</option>
<option value="1974">1974</option>
<option value="1973">1973</option>
<option value="1972">1972</option>
<option value="1971">1971</option>
<option value="1970">1970</option>
<option value="1969">1969</option>
<option value="1968">1968</option>
<option value="1967">1967</option>
<option value="1966">1966</option>
<option value="1965">1965</option>
<option value="1964">1964</option>
<option value="1963">1963</option>
<option value="1962">1962</option>
<option value="1961">1961</option>
<option value="1960">1960</option>
<option value="1959">1959</option>
<option value="1958">1958</option>
<option value="1957">1957</option>
<option value="1956">1956</option>
<option value="1955">1955</option>
<option value="1954">1954</option>
<option value="1953">1953</option>
<option value="1952">1952</option>
<option value="1951">1951</option>
<option value="1950">1950</option>
<option value="1949">1949</option>
<option value="1948">1948</option>
<option value="1947">1947</option>
<option value="1946">1946</option>
<option value="1945">1945</option>
<option value="1944">1944</option>
<option value="1943">1943</option>
<option value="1942">1942</option>
<option value="1941">1941</option>
<option value="1940">1940</option>
<option value="1939">1939</option>
<option value="1938">1938</option>
<option value="1937">1937</option>
<option value="1936">1936</option>
<option value="1935">1935</option>
<option value="1934">1934</option>
<option value="1933">1933</option>
<option value="1932">1932</option>
<option value="1931">1931</option>
<option value="1930">1930</option>
</select>
<select id="education_start_date_2i" name="education[start_date(2i)]">
<option value="1">January</option>
<option value="2">February</option>
<option value="3">March</option>
<option value="4">April</option>
<option value="5">May</option>
<option value="6" selected="selected">June</option>
<option value="7">July</option>
<option value="8">August</option>
<option value="9">September</option>
<option value="10">October</option>
<option value="11">November</option>
<option value="12">December</option>
</select>
<input type="hidden" id="education_start_date_3i" name="education[start_date(3i)]" value="1" />

</div>
<div className="inline field">
<label for="education_End Date">End date</label>
<select id="education_end_date_1i" name="education[end_date(1i)]">
<option value="2017" selected="selected">2017</option>
<option value="2016">2016</option>
<option value="2015">2015</option>
<option value="2014">2014</option>
<option value="2013">2013</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
<option value="2010">2010</option>
<option value="2009">2009</option>
<option value="2008">2008</option>
<option value="2007">2007</option>
<option value="2006">2006</option>
<option value="2005">2005</option>
<option value="2004">2004</option>
<option value="2003">2003</option>
<option value="2002">2002</option>
<option value="2001">2001</option>
<option value="2000">2000</option>
<option value="1999">1999</option>
<option value="1998">1998</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option>
<option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>
<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
<option value="1979">1979</option>
<option value="1978">1978</option>
<option value="1977">1977</option>
<option value="1976">1976</option>
<option value="1975">1975</option>
<option value="1974">1974</option>
<option value="1973">1973</option>
<option value="1972">1972</option>
<option value="1971">1971</option>
<option value="1970">1970</option>
<option value="1969">1969</option>
<option value="1968">1968</option>
<option value="1967">1967</option>
<option value="1966">1966</option>
<option value="1965">1965</option>
<option value="1964">1964</option>
<option value="1963">1963</option>
<option value="1962">1962</option>
<option value="1961">1961</option>
<option value="1960">1960</option>
<option value="1959">1959</option>
<option value="1958">1958</option>
<option value="1957">1957</option>
<option value="1956">1956</option>
<option value="1955">1955</option>
<option value="1954">1954</option>
<option value="1953">1953</option>
<option value="1952">1952</option>
<option value="1951">1951</option>
<option value="1950">1950</option>
<option value="1949">1949</option>
<option value="1948">1948</option>
<option value="1947">1947</option>
<option value="1946">1946</option>
<option value="1945">1945</option>
<option value="1944">1944</option>
<option value="1943">1943</option>
<option value="1942">1942</option>
<option value="1941">1941</option>
<option value="1940">1940</option>
<option value="1939">1939</option>
<option value="1938">1938</option>
<option value="1937">1937</option>
<option value="1936">1936</option>
<option value="1935">1935</option>
<option value="1934">1934</option>
<option value="1933">1933</option>
<option value="1932">1932</option>
<option value="1931">1931</option>
<option value="1930">1930</option>
</select>
<select id="education_end_date_2i" name="education[end_date(2i)]">
<option value="1">January</option>
<option value="2">February</option>
<option value="3">March</option>
<option value="4">April</option>
<option value="5">May</option>
<option value="6" selected="selected">June</option>
<option value="7">July</option>
<option value="8">August</option>
<option value="9">September</option>
<option value="10">October</option>
<option value="11">November</option>
<option value="12">December</option>
</select>
<input type="hidden" id="education_end_date_3i" name="education[end_date(3i)]" value="1" />

</div>
</div>

<div className="field">
<label for="education_School_Website">School website</label>
<input placeholder="example http://school.com " type="url" name="education[school_website]" id="education_school_website" />
</div>

<input value="1" type="hidden" name="education[jobseeker_id]" id="education_jobseeker_id" />
<div className="ui hidden divider"></div>

<div className="inline fields">
<div className="field">
<input type="submit" name="commit" value="Update" className="ui violet button" data-disable-with="Update" />
</div>
<div className="field">
<a className="ui left floated button" href="/educations">Cancel</a>

</div>
</div>
</form></div>




export default Education
