# Microsoft GreenAI: NLP Text Summarization (preview)
[![ARM Quickstart](../../actions/workflows/arm-cmd-job-pytorch.yml/badge.svg)](../../actions/workflows/arm-cmd-job-pytorch.yml) [![CLI Job](../../actions/workflows/cli-cmd-job-basic.yml/badge.svg)](../../actions/workflows/cli-cmd-job-basic.yml) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)

<p align="center">
  <img src="docs/images/azureml-icon.png" alt="azureml icon" height="80"/>
  <img src="docs/images/plus-icon.png" alt="plus" height="50"/>
  <img src="https://huggingface.co/front/assets/huggingface_logo.svg" alt="huggingface icon" height="80"/>
</p>

This repo currently contains samples to fine-tune [HuggingFace models](https://huggingface.co/models) for text summarization using [Microsoft's Azure Machine Learning service](https://azure.microsoft.com/en-us/services/machine-learning-service/). These samples could be adapted to fine-tune models for other NLP tasks or product scenarios.

### What's available now?
* AzureML v2 CLI examples for fine-tuning HuggingFace models
* Quickstart ARM Templates for fine-tuning HuggingFace models
* Fine-tuned HuggingFace models & results: https://huggingface.co/linydub

### What's coming next?
* Benchmarking and carbon accounting with MLflow and Azure Monitor Metrics (performance + resource metrics)
* Interactive data visualization example with Azure Monitor Workbook
* AML v2 CLI inference samples with ONNX Runtime and NVIDIA Triton (AML endpoint & deployment)
* AML v2 CLI end-to-end pipeline samples
* Repository documentation and detailed guide for the samples
* More fine-tuned models and benchmark results

**More details about the project and future plans could be found [here](../../projects).*

## Contents
| Directory | Description |
| --------- | ----------- |
| [`cloud`](./cloud) | Cloud-specific configuration code |
| [`docs`](./docs) | Project docs & images |
| [`examples`](./examples) | AzureML examples for sample tasks |

# Fine-tuning Samples
These samples showcase various methods to fine-tune HuggingFace models using AzureML. All of the samples include DeepSpeed, FairScale, CodeCarbon, MLflow integrations with no additional setup or code.

All logged training metrics are automatically reported to AzureML and MLflow. CodeCarbon also generates a `emissions.csv` file by default inside the outputs folder of the submitted run. To disable a package, ommit it from the environment's conda file.

**Sample script for retrieving and aggregating MLflow and resource usage data will be available next update.*

## Quickstart

### Fine-tune a HuggingFace Model
[![Deploy to Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Flinydub%2Fazureml%2Dgreenai%2Dtxtsum%2Fmain%2F%cloud%2Fquickstart%2FazuredeployCmdJobPytorch%2Ejson)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https://raw.githubusercontent.com/linydub/azureml-greenai-txtsum/main/cloud/quickstart/azuredeployCmdJobPytorch.json)

### Fine-tune with DeepSpeed ZeRO Optimizations
[![Deploy to Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Flinydub%2Fazureml%2Dgreenai%2Dtxtsum%2Fmain%2F%cloud%2Fquickstart%2FazuredeployCmdJobDeepspeed%2Ejson)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https://raw.githubusercontent.com/linydub/azureml-greenai-txtsum/main/cloud/quickstart/azuredeployCmdJobDeepspeed.json)

### Hyperparameter Sweep with HyperDrive
[![Deploy to Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Flinydub%2Fazureml%2Dgreenai%2Dtxtsum%2Fmain%2F%cloud%2Fquickstart%2FazuredeploySweepJob%2Ejson)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https://raw.githubusercontent.com/linydub/azureml-greenai-txtsum/main/cloud/quickstart/azuredeploySweepJob.json)

More advanced ARM Templates will be available [here](./cloud).

## AzureML v2 CLI Examples
Fine-tuning samples using AML 2.0 CLI could be found [here](./examples).

# Inference Samples

## Jupyter Notebooks
| Notebook | Description |
| -------- | ----------- |

# Support/Feedback
Please file an issue through the repo or email me at liny62@uw.edu. Feedback is greatly appreciated 🤗
