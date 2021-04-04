---
title: "Pytorch Support"
date: 2021-04-04T12:26:37-04:00
draft: false
summary: "Expanding beyond TensorFlow"
---

We've been working on this one for a while, so I'm pretty excited to share that we're finally adding support for PyTorch models!

**Decision Hell**

This project took about 3x longer than anticipated because PyTorch has so many [different ways](https://pytorch.org/tutorials/intermediate/flask_rest_api_tutorial.html) of exporting a model, that we had to make multiple decisions that heavily influenced EasyTensor's interface to the engineer. The most difficult one was deciding on whether to adopt [Pytorch Serve](https://github.com/pytorch/serve) (PyTorch's own serving framework) or implement our own model server for PyTorch. It turns out PyTorch Serve is still very buggy (still in beta), something that we only found out about after integrating it fully in our stack 💢. At the end of the day, the risk for supporting an in-development framework was not worth it, so we decided to create our own simple framework built on top of FastAPI.

Another decision came in designing the inference interface (that's a mouthful). Since PyTorch models do not have a standardized inference function that takes in a predictable number of arguments, we decided to allow the engineer to define their own inference functions, which then meant hosting the engineer's code on EasyTensor. This can be a pandora box, so we're starting small and constraining the engineer's python code to only have one file that can have a maximum of one class (the model definition) and must include a `predict_single` function. The nice thing here is that the engineer is fully in control of the pre-processing, inference, and post-processing of the user's raw input.

**How it works**

PyTorch models are exported in two steps:

1. The model's weights and biases
2. The model's class definition

The first one is rather simple, and pytorch exposes utility functions to take care of it. EasyTensor will automatically export the model weights as part of the upload step.

The second is more challenging because it puts the onus of correctly defining the model class on the engineer. PyTorch and EasyTensor can offer very little help. Naturally, we developed an interface.

The engineer must create a class definition in a python file and include a `predict_single` inference function that the serve will call on every inference request. This means the engineer has all the freedom to instantiate the class and define the inference function (which also means they get to control what the input looks like).

**How to use it**

<!--
It's easier to just show it

But if your family is watching 10 different shows on Netflix and you don't want to waste the bandwidth, this is the text version: -->

1. Copy your model's class definition to a file called `model.py`. Make sure the file:
   - Only has one class definition, which is your model
   - The class definition takes no arguments
   - The class definition has a `predict_single` method that will accept your user's input, run inference, and return the output.

- load/train your model on a python interpreter and call

```python

import easytensor; easytensor.pytorch.upload("My first PyTorch model", model, "model.py")

```
