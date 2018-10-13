# Project:
An online video company asked for an analysis of the courses and videos of the platform, from a sample of the database. We will look at the average time students take to complete their classes, which courses and which videos of each are the most accessed.
It will be correlation analysis, checking if the popularity of the course is related to its average duration. We will import databases and gather external information that we need to have in one place to do the analysis.


## Popularity Analysis:
We created a statistically rigorous chart with scale and checkered background that assists in statistical inferences. For example, on the vertical axis we have **500**, and two squares above we have **1000**. From the square we know that **750** is right in the middle of them, **shaded area** is the margin of confidence, in which we hope the points are distributed. It acts as a measure of error of the curve, so for safety, in addition to the blue line, consider the shaded area in gray. It indicates the region in which you expect to find values. The correct interpretation includes the values of the shaded area, the margin of error.



![analise de popularidade](https://user-images.githubusercontent.com/39059033/46900350-08de0c00-ce77-11e8-9440-c28290a988c1.png)

### Analysis of the Entity Database:
*In the sample that you gave us, there are 6366 enrollments, 264 courses and 484 unique students, of which 60.13% did not complete the dropout courses, or concluded only after sending the sample of the database.*

#### Conclusion:
The confidence margin is smaller at the beginning of the graph, between **0** and **100** days, on the horizontal axis. After **100** days, the shaded area increases. This means that at the end of the graph the chance of error is high and that it may be risky to make some inference about the popularity of courses that take longer to completion. The security to assert something is minor, because there are very few courses that lasted more than **300** days, and the margin of error is greater in this region because there is less information in it.

Thus, it increases greatly from **300** of the horizontal axis of the graph. We have more security at the beginning of the graph, although many points in this region are outside the shaded area, indicating that the smooth model adjusts the points. There is a margin of error, but we still find points outside the curve and the shaded area in the sample.

All this is absolutely expected in a data analysis, such as the one we work on. Real-world data are rarely behaved and allow a description with a curve or margin of error. Usually, we will find points outside the expectation, the margin of safety. Therefore, we will take to the company:

- the average and the peak of popularity;
- the location of the margin of error and how it behaves from the beginning to the end of the distribution;
- what are the different cases.


