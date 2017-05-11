require 'parameters.TEMPLATE'

-- Separate training for front and backend
actionParam.train = 'trainStepNetwork'

-----------------------------------
-- Parameters to be tuned freely --
-----------------------------------
actionParam.upscaleFactor = 4
actionParam.numRecursions = 5
actionParam.numHiddenChannelsInRecursion = 6

actionParam.epochs = 100
actionParam.sgd_params = {
   learningRate = 1e-1,
   learningRateDecay = 1e-4,
   weightDecay = 0,
   momentum = 0
}

actionParam.mainData = {'datasets/BSD100_SR/image_SRF_4/','datasets/Set14/image_SRF_4/'}
actionParam.testData = {'datasets/Set5/image_SRF_4/'}