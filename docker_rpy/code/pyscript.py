# Create a normal random sample
import numpy as np
mu, sigma = 0, 0.1
np.random.seed(1)
data = np.random.normal(mu, sigma, 1000)
# save it
np.savetxt('data/data.csv', data, delimiter=',', header='X')
