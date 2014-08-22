#ifndef MYPING_H
#define MYPING_H

u_short in_cksum(u_short *addr, int len);

void Ping(const char *szHost, unsigned int nRetries);

#endif