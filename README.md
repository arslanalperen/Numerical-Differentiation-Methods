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
