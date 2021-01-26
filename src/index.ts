import { setFailed } from '@actions/core';

export const run = async (sf: typeof setFailed = setFailed) => {
  try {
    // Your main code here
  } catch (e) {
    sf((<Error>e).message)
  }
}

run()
