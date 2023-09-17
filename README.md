# pytorch-mnist

A simple GPU workload for testing on a K8s cluster.

```sh
$ kubectl logs -l app=pytorch-mnist
Train Epoch: 2 [55680/60000 (93%)]	Loss: 0.161822
Train Epoch: 2 [56320/60000 (94%)]	Loss: 0.008159
Train Epoch: 2 [56960/60000 (95%)]	Loss: 0.217744
Train Epoch: 2 [57600/60000 (96%)]	Loss: 0.042390
Train Epoch: 2 [58240/60000 (97%)]	Loss: 0.055086
Train Epoch: 2 [58880/60000 (98%)]	Loss: 0.090941
Train Epoch: 2 [59520/60000 (99%)]	Loss: 0.156907

Test set: Average loss: 0.0345, Accuracy: 9890/10000 (99%)
```
