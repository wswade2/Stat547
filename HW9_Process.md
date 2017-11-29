# HW9 Process
Wade  
November 28, 2017  

<a href=https://github.com/wswade2/Stat547/tree/master/graphomax>View "graphomax" package files here.</a>

<a href=https://github.com/wswade2/Stat547/blob/master/graphomax/R/histomax.R>Code for "histomax" function</a>

<a href=https://github.com/wswade2/Stat547/blob/master/graphomax/R/baromax.R>Code for "baromax" function</a>

<a href=https://github.com/wswade2/Stat547/blob/master/graphomax/DESCRIPTION>Description File</a>

This homework was one of my favorite homeworks so far. There are so many things you can do once you learn how to make your own packages! I'll start by explaining what I wanted to accomplish.

I do research in the social sciences, where we are often running experiments and measuring one or more focal response variable. This means that exploratory data analysis requires generating lots of barplots. In the past, I have generated these plots inefficiently, using copy and paste as well as over 100 lines of code. 

With this package (graphomax), I decided to simplify this process by providing the user with a single function (histomax) that generates histograms for each of the variables in a dataset. Next, I created the baromax function which gives the user the ability to plot 2x2 barplots with a single line per plot. These plots everything you want from ggplot2, except you don't need 9-10 lines of code for each plot. You lose out on some flexibility, but gain quite a bit in terms of efficiency.

There are many more functions I would love to add in the future to this package as I think it could potentially make my exploratory data analysis much more streamlined.
