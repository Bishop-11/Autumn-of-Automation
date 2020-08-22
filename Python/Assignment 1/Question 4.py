import numpy as np
from numpy.linalg import inv
from numpy import matmul as m

X = np.random.standard_normal((20,20))
y = 10*(np.random.random(20))
y = np.int32(y)
Xt = X.transpose()

theta = m(m(inv(m(Xt,X)),Xt),y)


print("Matrix y: ",y)
print("Matrix x: ",X)
print("Matrix Theta: ",theta)


