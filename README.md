# Numerical Differentiation Methods
**<h1>Purpose</h1>**  
In a circuit with impressed voltage ε(t), inductance L , and resistance R , as shown in Figure 1, Kirchhoff’s voltage law gives the relationship

ε(t)=L d/dt i(t)+Ri(t),

Where i(t) is the current. This is due to the voltage difference induces on an inductance is proportional to the inductance value and the time derivative of the current flows through the inductance, i.e. V_L (t)=L d/dt i(t) . On the other hand, the voltage difference on a resistance can be determined as V_R (t)=Ri(t).
  

![1](/images/1.png)  

The current values of the circuit, where L=0.98 H (Henries) and R=14.2 Ω (Ohms), is measured using a current meter for different time step sizes at the time interval t ϵ [0,600]  ms and relations are specified in Table 1. In the measurement data files, the first column is the time in seconds (s) and second column is the current value in Amperes (A).  

![2](/images/2.png)  

ε(t)  values can be calculated by substituting all the values given in the project file. At this point, it can be seen that the time dependent derivation of the value  i(t) must be taken to calculate the value of ε(t). In the project, this derivative is requested to be taken with 3 different methods in Matlab. These are Forward-difference, Backward-difference, and Three point midpoint formula.  

**<h1>Preparatory Work</h1>**  

If the formula to be calculated to find the ε(t)   value is considered again,

ε(t)=L d/dt i(t)+Ri(t),

 it is seen that the critical point is the derivative of the current with time. The formulas of the methods required to calculate this critical point in the project are;

Forward-difference method can be used for taking derivative of x_0 value:

f'(x_0)=  (f(x_1 )-f(x_0))/(x_1- x_0 )=  1/h(f(x_1 )-f(x_0 ))

Similarly Backward-difference method can be used for taking derivative of  x_1 value:

f'(x_1)=  (f(x_1 )-f(x_0))/(x_1- x_0 )=  1/h(f(x_1 )-f(x_0 ))

When looking at the forward-difference and Backward-difference formulas, it can be seen that the forward-difference method of the derivative cannot be determined at the right endpoint and the backward-difference method at the left endpoint for the value in a limited data group. In addition, if the time-dependent graph of the ε(t)   value is drawn using these methods, it can be expected to approach a value from opposite directions with parabolic convergence.

Three-Point Midpoint Formula can be used for taking derivative of  x_0 value:

f^' (x_0 )=  1/2h[f(x_0+h)-f(x_0-h)]

Three-Point Endpoint Formula can be used for taking derivative of  x_0 value:

f^' (x_0 )=  1/2h[-3f(x_0 )+4f(x_0+h)-f(x_0+2h)]

Looking at the Three-Point Midpoint formula, it can be seen that left and right endpoints cannot be added between the derivative points to be calculated in a limited data group. A separate formula can also be used for the left and right endpoints. In the case where the endpoints are also calculated, a parabolic convergence with an instantaneous fluctuation is expected rather than a parabolic convergence in the graph due to the calculation of the endpoints. In cases where endpoints are included or not, two different methods are used in the project in order to observe the change in the graph of  ε(t) value over time.  

**<h1>Analysis</h1>**
**<h3>Forward Difference Method</h3>**  

As mentioned in the previous pages of the report, the time dependent derivative of the current will be taken with this method. Later, this derivative will be used in the formula to calculate the ε(t) value. This calculation will contain a certain amount of error. Therefore, an error calculation will also be made to determine our error rate.

It is requested to use 75 ms as the ∆t value for the data in the file named Current1.dat. For these data, for each time value except the right end point,  

![3](/images/3.png)  

derivative current values are obtained by using the forward-differences method(Figure 2).
It is requested to use 50 ms as the ∆t value for the data in the file named Current2.dat. For these data, for each time value except the right end point,  

![4](/images/4.png)  

derivative current values are obtained by using the forward-differences method(Figure 3).
Values were calculated for 25 and 10 ms, but they were not added to avoid extending the report unnecessarily.


At this point, what is expected is that lowering the ∆t value, gives more accurate results are due to the structure of the formula. Keeping the ∆t value lower will reduce the distance between data. As a result, the graph of the data will naturally follow a more parabolic path, which will allow more accurate results to be approached.

If the time-current derivative graph calculated for each ∆t value is drawn,  

![5](/images/5.png)  

it can be seen that the expected output is received(Figure 4).

When looking at the points where convergences end, it can be seen that the curve with the lower dt value converges better(Figure 5).  

![6](/images/6.png)  

Calculated derivative values can be substituted for each ∆t value. 

If the derivative data used with 75 ms ∆t value is replaced in the formula to find the ε(t) value  

![7](/images/7.png)  

these values are obtained(Figure 6).

If the derivative data used with 50 ms ∆t value is replaced in the formula to find the ε(t) value  

![8](/images/8.png)  

these values are obtained(Figure 7).
Values were calculated for 25 and 10 ms, but they were not added to avoid extending the report unnecessarily.

To see the difference better, the values obtained for all ∆t values can be plotted on a graph.

At this point, these values are expected to converge towards a point. As mentioned before, it is expected that the line with lower ∆t value will converge more parabolic and give a more accurate result.  

![9](/images/9.png)  

It can be seen that the lines of each ∆t converge as expected(Figure 8). The lines converge towards 12, and the line with the less ∆t seems to be more parabolic to this value.  

![10](/images/10.png)  

When looking at the points where convergences end, it can be seen that the curve with the lower ∆t value converges better(Figure 9).  

**<h3>Backward Difference Method</h3>**  

In the previous part of the report, the desired values were derivatized at desired time intervals using the Forward-difference method. Likewise, the desired values will be differentiated at the desired time intervals, this time with the Backward-difference method, and put in the relevant places to find the  ε(t) value. This calculation will contain a certain amount of error like the used previous method. Therefore, an error calculation will also be made to determine our error rate.

As mentioned before, derivative cannot be calculated for the left end point in the Backward-difference method. So this point will not be included in the calculation. If the data group to be calculated with 75 ms ∆t value is calculated by Backward-difference method  

![11](/images/11.png)  

these values are obtained(Figure 10).

If the data group to be calculated with 50 ms ∆t value is calculated by Backward-difference method  

![12](/images/12.png)  

these values are obtained(Figure 11).

Values were calculated for 25 and 10 ms, but they were not added to avoid extending the report unnecessarily.

To see the difference better, the values obtained for all ∆t values can be plotted on a graph.

At this point, as mentioned in the previous pages of the report, the data group with the lower ∆t value is expected to show a more parabolic and more accurate convergence. The reason for this is naturally due to the structure of the formula used, and it has been mentioned in the previous pages of the report.

If the time-current derivative graph calculated for each ∆t value is drawn,  

![13](/images/13.png)  

it can be seen that the expected output is received(Figure 12).

When looking at the points where convergences end, it can be seen that the curve with the lower ∆t value converges better(Figure 13).  

![14](/images/14.png)  

If the derivative data used with 75 ms ∆t value is replaced in the formula to find the ε(t) value  

![15](/images/15.png)  

these values are obtained(Figure 15).

Values were calculated for 25 and 10 ms, but they were not added to avoid extending the report unnecessarily.

To see the difference better, the values obtained for all ∆t values can be plotted on a graph.

At this point, these values are expected to converge towards a point. As mentioned before, it is expected that the line with lower ∆t value will converge more parabolic and give a more accurate result. However, the graph of ε(t) values calculated by the Backward-difference method is expected to converge in opposite directions compared to the graph of ε(t) values calculated by the Forward-difference method. Considering the formulas used for both methods, it will be understood why their names are like that. Because the methods reverse the values according to each other. As a result, both methods are expected to converge in the same way except for the directions.  

![16](/images/16.png)  
![17](/images/17.png)  

When looking at the points where convergences end, it can be seen that the curve with the lower ∆t value converges better(Figure 17).  

**<h3>Three-Point Midpoint Formula</h3>**  

It was also mentioned in the preliminary section of the report on the three-point midpoint method. When we look at the Midpoint method, it is seen that it cannot calculate derivatives in left and right end points. There is also a separate method for these points. This method is called the Three-point endpoint method. Using this method, the derivative can also be calculated at the end point points. To see the difference, we will first calculate it by including the end points. Later, we will not include end points using only the midpoint method. Finally, we will compare these results according to their convergence.  

**<h4>Three-Point Midpoint Formula</h4>**  

The midpoint formula will be used to calculate the derivative of intermediate values. Three-Point Midpoint Formula can be used for taking derivative of  x_0 value:

f^' (x_0 )=  1/2h[f(x_0+h)-f(x_0-h)]

End point formula will be used for end points. Three-Point Endpoint Formula can be used for taking derivative of  x_0 value:

f^' (x_0 )=  1/2h[-3f(x_0 )+4f(x_0+h)-f(x_0+2h)]

Derivative will be taken for both Endpoints. Therefore, a more accurate result is expected to be obtained compared to the forward and backward methods. Because the derivative could not be taken for the right endpoint in the forward-difference method and for the left endpoint in the backward-difference method.

If the data group to be calculated with 75 ms ∆t value is calculated,  

![18](/images/19.png)  

these values are obtained(Figure 18).

If the data group to be calculated with 50 ms ∆t value is calculated,  

![19](/images/20.png)  

these values are obtained(Figure 19).

Values were calculated for 25 and 10 ms, but they were not added to avoid extending the report unnecessarily.

To see the difference better, the values obtained for all ∆t values can be plotted on a graph.  

![20](/images/21.png)  

If the time-current derivative graph is drawn according to each dt value, figure 20 will be obtained. As mentioned in the previous pages of the report, it is seen that the line follows a more parabolic path with the decrease in the ∆t value.

When looking at the points where convergences end, it can be seen that the curve with the lower ∆t value converges better(Figure 21).  

![21](/images/22.png)  

If the derivative data used with 75 ms ∆t value is replaced in the formula to find the ε(t) value  

![22](/images/23.png)  

these values are obtained(Figure 22).

If the derivative data used with 50 ms ∆t value is replaced in the formula to find the ε(t) value  

![23](/images/24.png)  

these values are obtained(Figure 23).

Values were calculated for 25 and 10 ms, but they were not added to avoid extending the report unnecessarily.

To see the difference better, the values obtained for all ∆t values can be plotted on a graph. At this point, it will go linear at a correct point that is expected to be parabolic due to the inclusion of the end points. Because the method used to calculate end points is different from the midpoint method.  

![24](/images/25.png)  

As mentioned in the previous pages of the report, it is seen that the line follows a more parabolic path with the decrease in the ∆t value.

When looking at the points where convergences end, it can be seen that the curve with the lower ∆t value converges better(Figure 25). It even caught the correct exact value where ∆t is 10 ms.  

![25](/images/26.png)  

**<h4>Three-Point Midpoint Formula without Endpoints</h4>**  

The midpoint formula will be used to calculate the derivative of intermediate values. Three-Point Midpoint Formula can be used for taking derivative of  x_0 value:

f^' (x_0 )=  1/2h[f(x_0+h)-f(x_0-h)]

End point formula will not be used.

If the data group to be calculated with 75 ms ∆t value is calculated,  

![26](/images/27.png)  

these values are obtained(Figure 26).

If the data group to be calculated with 50 ms ∆t value is calculated,  

![27](/images/28.png)  

these values are obtained(Figure 27).

Values were calculated for 25 and 10 ms, but they were not added to avoid extending the report unnecessarily.

To see the difference better, the values obtained for all ∆t values can be plotted on a graph(Figure 28).  

![28](/images/29.png)  

When looking at the points where convergences end, it can be seen that the curve with the lower ∆t value converges better(Figure 29).  

![29](/images/30.png)  

If the derivative data used with 75 ms ∆t value is replaced in the formula to find the ε(t) value  

![30](/images/31.png)  

these values are obtained(Figure 30).

If the derivative data used with 50 ms ∆t value is replaced in the formula to find the ε(t) value  

![31](/images/32.png)  

these values are obtained(Figure 31).

Values were calculated for 25 and 10 ms, but they were not added to avoid extending the report unnecessarily.

To see the difference better, the values obtained for all ∆t values can be plotted on a graph. At this point, since the endpoints are not included in the derivatives for this method and only the midpoint formula is used, there will not be instantaneous linearity in the ε(t) values as in the case where the endpoints are included, and the lines will follow a parabolic path.  

![32](/images/33.png)  

As mentioned in the previous pages of the report, it is seen that the line follows a more parabolic path with the decrease in the ∆t value.

When looking at the points where convergences end, it can be seen that the curve with the lower ∆t value converges better(Figure 33). It even caught the correct exact value where ∆t is 10 ms.  

![33](/images/34.png)  

As can be seen, both methods were applied. It was expected to give a more accurate result when the Three-Point Midpoint method was added to the Endpoints. But it is seen that the same values are obtained in the resulting graphics. With regard to obtaining such a result, it can be commented that adding endpoints to the Three-Point Midpoint method may not affect the convergence, although it may not affect the convergence, under normal conditions the method should meet the expectation, but the difference cannot be seen on this example or the method that should be applied cannot be applied properly.  

**<h1>Errors and Final Remarks</h1>**  

The norm of a matrix is a scalar that gives some measure of the magnitude of the elements of the matrix. This Matlab function can be used for error calculation.  

![34](/images/35.png)  

When each graph is examined, it can be clearly seen that it approaches the number 12 for ε(t) value. Therefore, it can be said that the theoretical value of ε(t) in the circuit is 12. E value will be assumed to be 12 while calculating the error.

It was frequently mentioned in the previous pages of the report that the data group with a lower ∆t value would converge better. This can be seen when looking at the error rates. When looking at the error rates on a method basis, first let's compare Forward and Backward difference methods. It was written that these methods were similar, only the convergence directions would be similar, and their convergence was expected to be the same. Such an interpretation can be made when considering the formulas used in the methods. However, when looking at the error rates, it can be seen that the Backward-difference method gives a slightly less erroneous result compared to the Forward-difference method.

For the Midpoint method, the cases of placing or not putting endpoints were interpreted on the graph on the previous pages of the report. When viewed on the graph, it was seen that it converged in the same way and it was said that the expectation was not met. However, when looking at the error rates, it can be said that adding endpoints to the calculations gives a clearly better result than if they were not added. In this case, it could be said when looking at the error rates that the expectations were met.

In general, it can be said that the three-Point Midpoint method, which includes the endpoints, has the least error rate, that is, the method that gives the most accurate results when all 4 methods are compared according to the error rates.  
