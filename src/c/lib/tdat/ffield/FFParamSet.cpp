///////////////////////////////////////////////////////////////////////////////
// FFParamSet Class
//
//
// DESIGN:
//          TODO
//
///////////////////////////////////////////////////////////////////////////////

#include <iostream>
  using std::cout;
  using std::endl;

#include "util/ErrMsg.H"
#include "tdat/FFParamSet.H"

//-------------------Constructor---------------------------------
/////////////////////////////////////////////////////////////////
// Description: Constructs the parameter set
//
/////////////////////////////////////////////////////////////////
FFParamSet::FFParamSet( void)
{
}
 
//-------------------Destructor---------------------------------
/////////////////////////////////////////////////////////////////
// Description: Releases the dynamically allocated memory.
//
/////////////////////////////////////////////////////////////////
FFParamSet::~FFParamSet( void)  {
   p_labels.clear();
   p_values.clear();
}

//-------------------Public Methods---------------------------------
/////////////////////////////////////////////////////////////////
// Description: Clears object stored values
//
/////////////////////////////////////////////////////////////////
void FFParamSet::reset()  {
   clear();
}

/////////////////////////////////////////////////////////////////
// Description: Clears stored values
//
/////////////////////////////////////////////////////////////////
void FFParamSet::clear()  {
   p_values.clear();
   p_labels.clear();
}

/////////////////////////////////////////////////////////////////
// Description: Add labels
//
/////////////////////////////////////////////////////////////////
void FFParamSet::addLabels( vector<string> &labels)  {
   for ( int i=0;i<labels.size();i++)
      p_labels.push_back( labels[i]);
}

/////////////////////////////////////////////////////////////////
// Description: Add values
//
/////////////////////////////////////////////////////////////////
void FFParamSet::addValues( const vector<string>& values)  {
   for ( int i=0;i<values.size();i++)
      p_values.push_back( values[i]);
}

/////////////////////////////////////////////////////////////////
// Description: Add value
//
/////////////////////////////////////////////////////////////////
void FFParamSet::addValue( string& value)  {
   p_values.push_back( value);
}

/////////////////////////////////////////////////////////////////
// Description: Retrieve count of stored values
//
/////////////////////////////////////////////////////////////////
int FFParamSet::getValueCount( void) const
{
   return p_values.size();
}

/////////////////////////////////////////////////////////////////
// Description: Retrieve count of stored labels
//
/////////////////////////////////////////////////////////////////
int FFParamSet::getLabelCount( void) const
{
   return p_labels.size();
}

/////////////////////////////////////////////////////////////////
// Description: Retrieve label by index
//
/////////////////////////////////////////////////////////////////
string FFParamSet::getLabel( const int idx)  const
{
   EE_ASSERT( ( idx >= 0 && idx < p_labels.size()), EE_FATAL,
                "Invalid index in call to FFParamSet::getLabel()");

   return p_labels[ idx];
}

/////////////////////////////////////////////////////////////////
// Description: Retrieve value by index
//
/////////////////////////////////////////////////////////////////
string FFParamSet::getValue( const int idx)  const
{
   EE_ASSERT( ( idx >= 0 && idx < p_values.size()), EE_FATAL,
                "Invalid index in call to FFParamSet::getValue()");

   return p_values[ idx];
}

/////////////////////////////////////////////////////////////////
// Description:  Prints values to standard out
//
/////////////////////////////////////////////////////////////////
void FFParamSet::print( void) const
{
   cout << "************ FFParmaSet: ******************" << endl;
   vector<string>::const_iterator pval = p_values.begin();
   vector<string>::const_iterator plab = p_labels.begin();
   while ( pval != p_values.end() && plab != p_labels.end())
      cout << "   " << *plab++ << ":  " << *pval++ << endl;
   while ( pval != p_values.end())
      cout << "   " << ",  " << *pval++ << endl;

}
