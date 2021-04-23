---
title: "Server Logs"
date: 2021-04-14T18:16:06-04:00
draft: false
summary: "Monitor your deployment"
---

#### Committed to transparency

At EasyTensor, we value transparency and are commited to empowering ML engineers with the full knowledge of how their model is performing at all times. We're excited to share the first steps in moving forward in that direction: server logs.

Starting today, ML engineers can view the full logs of the server on top of which the model is being run. Since all models are run in isolation on their own servers, this information will always be private and secure, we just made it easy for you to see 👁!

#### Easy to access

Like all things on EasyTensor, the logs are easy to access right from the models page. On all running model cards you'll now see a log button.

{{< imgproc "model_card_logs.png" Resize "420x png" >}}

When clicked, it will take you on a magical journey to the land of logs. Depending on how scaled your model is, you might have more than one pod for which the logs will be displayed.

{{< imgproc "logs_page.png" Resize "1080x png" >}}
