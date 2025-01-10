<div align="center">
  <a href="https://koyeb.com">
    <img src="https://www.koyeb.com/static/images/icons/koyeb.svg" alt="Logo" width="80" height="80">
  </a>
  <h3 align="center">Koyeb Serverless Platform</h3>
  <p align="center">
    Deploy Ollama with a model bundled in the Docker container on Koyeb
    <br />
    <a href="https://koyeb.com">Learn more about Koyeb</a>
    ·
    <a href="https://koyeb.com/docs">Explore the documentation</a>
    ·
    <a href="https://koyeb.com/tutorials">Discover our tutorials</a>
  </p>
</div>

## About Koyeb and the Ollama model bundle example application

Koyeb is a developer-friendly serverless platform to deploy apps globally. No-ops, servers, or infrastructure management.

This repository is designed to show how to deploy an Ollama instance with a model bundle in the Docker container to Koyeb. The `Dockerfile` allows for configuration through environment variables to make deployment and configuration more straightforward. By default, the image deploys Ollama with the [`gemma2:2b` model](https://ollama.com/library/gemma2:2b), but this is configurable using the `MODEL_NAME` environment variable.

## Getting Started

Follow the steps below to deploy an Ollama instance to your Koyeb account.

### Requirements

To use this repository, you need:

- A Koyeb account to build the `Dockerfile` and deploy it to the platform. If you don't already have an account, you can [sign-up for free](https://app.koyeb.com/auth/signup).

### Deploy using the Koyeb button

The fastest way to deploy an Ollama instance is to click the **Deploy to Koyeb** button below.

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy?name=koyeb-ollama-model-bundle&type=git&repository=koyeb%2Fexample-ollama-model-bundle&branch=main&builder=dockerfile&instance_type=gpu-nvidia-rtx-4000-sff-ada&env%5BMODEL_NAME%5D=gemma2:2b&hc_grace_period%5B8000%5D=300)

Clicking on this button brings you to the Koyeb App creation page with most of the settings pre-configured to launch this application. You will need to configure the following environment variables:

- `MODEL_NAME`: Set this to the name of the model you wish to use, as given on the Ollama site. You can check [what models Ollama supports](https://ollama.com/search) to find out more. Click the model name copy icon on the Hugging Face page to copy the appropriate value. If not provided, the `gemma2:2b` model will be deployed.

_To modify this application example, you will need to fork this repository. Check out the [fork and deploy](#fork-and-deploy-to-koyeb) instructions._

### Fork and deploy to Koyeb

If you want to customize and enhance this application, you need to fork this repository.

If you used the **Deploy to Koyeb** button, you can simply link your service to your forked repository to be able to push changes. Alternatively, you can manually create the application as described below.

On the [Koyeb Control Panel](https://app.koyeb.com/), on the **Overview** tab, click the **Create Web Service** button to begin.

1. Select **GitHub** as the deployment method.
2. Choose the repository containing your application code.
3. Expand the **Environment variables** section and click **Bulk edit** to configure new environment variables. Paste the following variable definitions in the box:

   ```
   MODEL_NAME=
   ```

   Fill out the values as described in the previous section.

4. In the **Instance** section, select the **GPU** category and choose **RTX-4000-SFF-ADA**.
5. Click **Deploy**.

The repository will be pulled, built, and deployed on Koyeb. Once the deployment is complete, it will be accessible using the Koyeb subdomain for your service.

## Contributing

If you have any questions, ideas or suggestions regarding this application sample, feel free to open an [issue](//github.com/koyeb/example-ollama-model-bundle/issues) or fork this repository and open a [pull request](//github.com/koyeb/example-ollama-model-bundle/pulls).

## Contact

[Koyeb](https://www.koyeb.com) - [@gokoyeb](https://twitter.com/gokoyeb) - [Slack](http://slack.koyeb.com/)
