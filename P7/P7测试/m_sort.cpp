#include <bits/stdc++.h>
using namespace std;
const int maxn=4000;
char s[maxn];
char t[maxn];
vector<string> v;
int main()
{
	int tag=0,cnt=0;
	string ss;
	freopen("m.out","r",stdin);
	freopen("maftersort.out","w",stdout);
	while(gets(s)!= NULL){
	    tag=0,cnt=0;
	    for(int i=0;s[i];i++)
	    {
	    	if(s[i]=='@') tag=1;
	    	if(tag) t[cnt]=s[i],cnt++;
		}
		t[cnt]='\0';
	    ss=t;
	    if(cnt) v.push_back(ss);
	}
	sort(v.begin(),v.end());
	for(int i=0;i<v.size();i++) cout << v[i] << endl;
}
