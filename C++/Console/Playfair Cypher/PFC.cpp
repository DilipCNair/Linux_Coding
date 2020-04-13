
#include <iostream>
#include <string.h>
using namespace std;
int main()
{
	int i = 0,m,choice, j = 0, k = 0, l = 65, skey = 0, size = 0;
	char pt[50], key[10], matrix[5][5], ct[50];
	do
	{
		for (m = 0; m < 80; m++)
			cout << "-";
		cout << "\n\t\t\t\tPlayfair Cryptography\n\n";
		for (m = 0; m < 80; m++)
			cout << "-";
		cout << "\n ***** Menu *****\n\n 1). Encryption\n\n 2). Decryption\n\n 3). Exit\n\n --> Enter your choice : ";
		cin >> choice;
		switch (choice)
		{
		    case 1:
			cout << endl;
			for (m = 0; m < 80; m++)
				cout << "-";
			for (i = 0; i < 5; i++)
				for (j = 0; j < 5; j++)
					matrix[i][j] = 92;
			cout << "\n Enter the Plaint Text : ";
			cin >> pt;
			cout << "\n Enter the Key ( Max 26 ) : ";
			cin >> key;
			while (pt[i] != 0)
			{
			  i++;
			  size++;
		    }
		    i = 0;
		    while (key[i] != 0)
		    {
			  i++;
			  skey++;
		    }
		   for (i = 0; j<skey; i++)
		    {
			 for (k = 0, j = 0; j < skey; k++, j++)
			 {
				matrix[i][j] = key[j];
			 }
		    }
		   for (i = 0; i < 5; i++)
			for (j = 0; j < 5; j++)
			{
				if (matrix[i][j] == 92)
					goto there;
			}
	       there:
		   for (; i < 5; i++)
		   {
			for (; j < 5; j++)
			{
				if (l != key[j])
				{
					matrix[i][j] = l;
					l++;
				}
				else
					l++;
			}
		   }
		   cout << "\n The Matrix is : ";
		   cout << endl << " ";
		   for (i = 0; i < 5; i++)
		   {
			cout << endl << endl << " ";

			for (j = 0; j < 5; j++)
				cout << matrix[i][j] << "  ";
		   }
		   cout << "\n\n\n\n i = " << i << "   j = " << j;
		   break;
		   case 2:break;
		   case 3:exit(0);
		   default:cout << "\n Wrong choice";
		 }
		cout << "\n\n ";
	} while (choice != 3);
	return 0;
}
