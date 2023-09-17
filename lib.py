import platform
import requests
import numpy as np

def python_version():
  print(requests.__version__)
  print(np.__version__)
  print(np.random.randint(0, 10, 10))
  """
  This function will return python version as string
  """
  return platform.python_version()