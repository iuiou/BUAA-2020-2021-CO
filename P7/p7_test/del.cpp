#include <bits/stdc++.h>
using namespace std;
vector<string> v;
char s[300];
int main()
{
	freopen("v.out","r",stdin);
	while(gets(s)!=NULL){
		string S=s;
		v.push_back(S);
	}
	freopen("v.out","w",stdout);
	for(int i=0;i<v.size();i++){
		if(v[i][0]==' ') cout << v[i] << end; 
	}
	v.clear();
	freopen("m.out","r",stdin);
	while(gets(s)!=NULL){
		string S=s;
		v.push_back(S);
	}
	freopen("m.out","w",stdout);
	for(int i=0;i<v.size();i++){
		if(v[i][0]==' ') cout << v[i] << end; 
	}
 } 
