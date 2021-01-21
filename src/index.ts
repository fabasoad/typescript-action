import { error } from '@actions/core';

export const run = async (err: typeof error = error) => {
  try {
    // Your main code here
  } catch (e) {
    err((<Error>e).message)
  }
}

run()
