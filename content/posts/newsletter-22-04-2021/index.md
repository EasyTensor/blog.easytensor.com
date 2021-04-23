---
title: "Newsletter #2"
date: 2021-04-22T18:16:06-04:00
draft: false
summary: "🤗 Transformers, Logging, and Landing Pages"
---

Hello and welcome to our second newsletter.

There is a bag of updates in today's issue, so let's get right to it!

---

# 🤗 Transformers support

Hugging Face (🤗) is one of the hottest NLP libraries out there, and they've been growing day by day. Our developers have been asking for an easy way to deploy hugging face models, and we're happy to help them out!

You can now easily deploy your finetuned hugging face models to EasyTensor and enjoy all the great features that come along with using ET.

{{< imgproc "hugging_face.png" Resize "1080x png" >}}

---

# [Server Logs]({{< ref "server-logs" >}})

Our main goal at EasyTensor is to make it easier for engineers to deploy their models to the cloud. But once you deploy your model, you might want to know what's going on under the hood. That's why we've added the ability to view the server logs on which your model is running. While we don't expect users to need to view their logs often, we understand that all engineers like to peek under the hood at any point in time.

{{< imgproc "logs_page.png" Resize "1080x png" >}}

---

# [Model Pages]({{< ref "model-pages" >}})

Models now have their own page! Whether to explain its architecture, document how it works, or just demo a few use cases, you can now utilize this page as a landing page for anyone interested in your model.

![Online Editor](edit_page.gif)
