#include <bits/stdc++.h>
using namespace std;
char s[]=".ktext 0x4180";
char a[34];
vector<string> t;
char ss[10000];
int main()
{
	for(int i=1;i<=371;i++){
    t.clear();
    int st=i,cnt=0;
    while(st){
    	a[cnt++]=st%10+'0';
    	st/=10;
	}
	string name="testpoint";
	for(int j=cnt-1;j>=0;j--) name=name+a[j];
	name=name+".asm";
	freopen(name.c_str(),"r",stdin);
	while(gets(ss)!=NULL){
		string S=ss;
		t.push_back(S);
	}
	freopen(name.c_str(),"w",stdout);
	for(int j=0;j<t.size();j++){
		if(t[j]==s){
			puts("label: j label"); 
		}
		cout << t[j] << endl;
	}
    }
 } 
