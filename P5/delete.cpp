#include <bits/stdc++.h>
using namespace std;
char s[50];
int main()
{
	freopen("before.asm","r",stdin);
	freopen("test.asm","w",stdout);
	while(gets(s)!=NULL){
		printf("%s\n",s);
		for(int i=1;i<=4;i++) printf("nop\n");
	}
	fclose(stdin);
	fclose(stdout);
 } 
