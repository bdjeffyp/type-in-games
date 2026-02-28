100 rem: argo
110 rem: copyright 1983
111 rem: tom rugg, phil feldman, and
112 rem: western systems group
120 r = rnd(-ti)
140 clr:print chr$(147):n = 13
150 dim w$(7,6), a(n), e(n), v(5)
160 v(1) = 65:v(2) = 69:v(3) = 73
165 v(4) = 79:v(5) = 85
170 d(3) = 160:d(4) = 164: d(5) = 169
175 d(6) = 175:d(7) = 182
180 gosub 6000
190 gosub 900:print chr$(147):c = 0:m = 5000
l95 d = 10:goto 5010
200 w$=""
210 get a$:c = c+1
215 if c > m then 810
220 nu = c:gosub 1000:if a$ = "" then 210
230 if asc(a$) = 13 then 300
260 if asc(a$) = 157 then 1500
270 if a$ < "a" or a$ > "z" then 210
280 w$ = w$ + a$:wo$ = w$:wl = d+10:gosub 1200
285 if len(w$) > 8 then 300
290 goto 210
300 l = len(w$)
310 if l < 3 or l > 7 then 400
320 gosub 3010
330 if f = 1 then m$ = "duplicate":goto 700
340 gosub 4010:if f = 1 then 400
350 t(l) = t(l)+1
360 if t(l) > 6 then 500
370 w$(l,t(l)) = w$
380 wo$ = w$:wl = d(l):gosub 1200
390 wo$ = "        ":wl = d+10:gosub 1200
395 d(l) = d(l) + 40:goto 200
400 m$ = "illegal":goto 700
500 t(l) = t(l)-1:m$ = "too many"
510 goto 700
700 wo$ = m$:wl = d+10:gosub 1200
710 for j = 1 to 30:c = c+1
720 gosub 1000:next
730 wo$ = "           ":wl = d+10
735 gosub 1200
740 goto 200
810 wo$ = "time's up.  ":wl = 400:gosub 1200
820 sc = 0: for j = 3 to 7
830 k = t(j):if k > 5 then k = 5
840 sc = sc+j*j*k:next
850 print "score =";sc
855 print
860 end
900 for j = 1 to n:r = int(rnd(1)*25)+65
910 a(j) = r:next
920 for j = 1 to 2
930 a(j) = v(int(rnd(1)*5)):next
940 return
1000 print chr$(19):print nu:return
1200 print chr$(19)
1205 xa = int(wl/40):ya = int(wl-(xa*40))
1210 if ya = 0 then 1230
1215 for ay = 1 to ya
1220 print chr$(29);:next
1230 if xa = 0 then 1250
1240 for ax = 1 to xa
1245 print chr$(17);:next
1250 print wo$;
1260 return
1500 if len(w$) < 2 then 730
1510 w$ = left$(w$,len(w$)-1)
1520 wo$ = " ":wl = d+len(w$):gosub 1200
1530 wo$ = w$:wl = d+len(w$):gosub 1200:goto 210
3010 f = 0:if t(l) = 0 then return
3020 for j = 1 to t(l)
3030 if w$(l,j) = w$ then f = 1
3040 next:return
4010 f = 0:for j = 1 to n:e(j) = a(j)
4020 next:for j = 1 to l
4030 k = asc(mid$(w$,j,1))
4040 for x = 1 to n
4050 if e(x) = k then e(x) = 0:goto 4070
4060 next:f = 1
4070 next j:return
5010 for j = n to 2 step -1:x = a(1):f = 1
5020 for l = 2 to j:if a(l) > x then x = a(l):f=l
5030 next:a(f) = a(j):a(j) = x:next
5050 for j = 1 to n
5055 wo$ = chr$(a(j)):wl = 42+j+j:gosub 1200
5100 next:goto 730
6000 print tab(12);"a r g o"
6010 print:print "press any key"
6020 j = int(rnd(1)*1)+1:get a$
6030 if a$ = "" then 6020
6040 return
