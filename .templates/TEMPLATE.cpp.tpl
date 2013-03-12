/****************
 * (>>>FILE<<<)
 * (>>>USER_NAME<<<)
 * (>>>ISO_DATE<<<)
 ***************/

#include <fstream>
#include <iostream>

using namespace std;

int main ( int argc, char *argv[] )
{
  if ( argc != 2 ) 
    cout<<"usage: "<< argv[0] <<" <filename>\n";
  else {
    ifstream the_file ( argv[1] );
    if ( !the_file.is_open() )
    else {
      char x;
      while ( the_file.get ( x ) )
        cout<< x;
    }
  }
}
