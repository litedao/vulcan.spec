UPDATE dai.ilk SET
  spot  = ${event.spot},
  rate  = ${event.rate},
  line  = ${event.line},
  act   = 'file',
  block = ${event.blockNumber},
  time  = to_timestamp(${event.timestamp}),
  tx    = ${event.transactionHash}
WHERE dai.ilk.id = ${event.id}
