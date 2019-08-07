#include <bits/stdc++.h>
using namespace std;

const int MAXN = 2010;     //点数的最大值
const int MAXM = 1200010;  //边数的最大值
const int INF = 0x3f3f3f3f;
struct Edge {
    int to, next, cap, flow;
} edge[MAXM];  //注意是 MAXM
int tol;
int head[MAXN];
void init() {
    tol = 2;
    memset(head, -1, sizeof(head));
}
void addedge(int u, int v, int w, int rw = 0) {
    edge[tol].to = v;
    edge[tol].cap = w;
    edge[tol].flow = 0;
    edge[tol].next = head[u];
    head[u] = tol++;
    edge[tol].to = u;
    edge[tol].cap = rw;
    edge[tol].flow = 0;
    edge[tol].next = head[v];
    head[v] = tol++;
}
int Q[MAXN];
int dep[MAXN], cur[MAXN], sta[MAXN];
bool bfs(int s, int t, int n) {
    int front = 0, tail = 0;
    memset(dep, -1, sizeof(dep[0]) * (n + 1));
    dep[s] = 0;
    Q[tail++] = s;
    while (front < tail) {
        int u = Q[front++];
        for (int i = head[u]; i != -1; i = edge[i].next) {
            int v = edge[i].to;
            if (edge[i].cap > edge[i].flow && dep[v] == -1) {
                dep[v] = dep[u] + 1;
                if (v == t) return true;
                Q[tail++] = v;
            }
        }
    }
    return false;
}
int dinic(int s, int t, int n) {
    int maxflow = 0;
    while (bfs(s, t, n)) {
        for (int i = 0; i < n; i++) cur[i] = head[i];
        int u = s, tail = 0;
        while (cur[s] != -1) {
            if (u == t) {
                int tp = INF;
                for (int i = tail - 1; i >= 0; i--) tp = min(tp, edge[sta[i]].cap - edge[sta[i]].flow);
                maxflow += tp;
                for (int i = tail - 1; i >= 0; i--) {
                    edge[sta[i]].flow += tp;
                    edge[sta[i] ^ 1].flow -= tp;
                    if (edge[sta[i]].cap - edge[sta[i]].flow == 0) tail = i;
                }
                u = edge[sta[tail] ^ 1].to;
            } else if (cur[u] != -1 && edge[cur[u]].cap > edge[cur[u]].flow && dep[u] + 1 == dep[edge[cur[u]].to]) {
                sta[tail++] = cur[u];
                u = edge[cur[u]].to;
            } else {
                while (u != s && cur[u] == -1) u = edge[sta[--tail] ^ 1].to;
                cur[u] = edge[cur[u]].next;
            }
        }
    }
    return maxflow;
}
struct Node {
    int r, c;
} maze[105][105];
int R[105], C[105];
int main() {
    freopen("RAW/in", "r", stdin);
    freopen("RAW/out", "w", stdout);
    int n, m;
    char str[10];
    while (~scanf("%d%d", &n, &m)) {  //m+n+m*n+2
        init();
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                scanf("%s", str);
                if (str[0] == '.') {
                    maze[i][j].r = maze[i][j].c = -1;
                } else {
                    sscanf(str, "%d", &maze[i][j].c);
                    sscanf(str + 4, "%d", &maze[i][j].r);
                }
            }
        }
        memset(R, 0, sizeof(R));
        memset(C, 0, sizeof(C));
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                R[i] += maze[i][j].r;
                C[j] += maze[i][j].c;
            }
        }
        int st = 0, ed = m + n + m * n + 1;
        for (int i = 0; i < n; i++) {
            if (R[i] != 0) {
                addedge(st, i + 1, R[i]);
                for (int j = 0; j < m; j++) {
                    addedge(i + 1, m + n + i * m + j + 1, 8);
                    addedge(m + n + i * m + j + 1, m + j + 1, 8);
                }
            }
        }
        for(int j = 0; j < m; j++) {
            if(C[j] != 0) addedge(m+j+1, ed, C[j]);
        }
        dinic(0, ed, ed+1);
        for(int i = 0; i < n; i++) {
            for(int j = 0; j < m; j++) {
                if(j > 0) printf(" ");
                if(maze[i][j].r != -1) printf("_");
                else printf("%d", edge[m+n+i*m+j+1].cap);
            }
            printf("\n");
        }
    }
    return 0;
}