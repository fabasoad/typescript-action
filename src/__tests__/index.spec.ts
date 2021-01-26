import { setFailed } from '@actions/core'
import { run } from '../index'

describe('Main runner', () => {
  let setFailedMocked

  beforeEach(() => {
    setFailedMocked = jest.fn((m: string) => expect(m).not.toBeNull())
  })

  it('should run successfully', async () => {
    await run(setFailedMocked as typeof setFailed)
  })

  it('should print error', async () => {
    // const expectedMessage: string = '0a77hs2u'
    await run(setFailedMocked as typeof setFailed)
    // expect(setFailedMocked.mock.calls.length).toBe(1)
    // expect(setFailedMocked.mock.calls[0][0]).toBe(expectedMessage)
  })

  afterEach(() => {
    setFailedMocked.mockReset();
  })
})
