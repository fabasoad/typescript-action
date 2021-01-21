import { error } from '@actions/core'
import { run } from '../index'

describe('Main runner', () => {
  let errorMocked

  beforeEach(() => {
    errorMocked = jest.fn((m: string) => jest.not.toBeNull(m))
  })

  it('should run successfully', async () => {
    await run(errorMocked as typeof error)
  })

  it('should print error', async () => {
    // const expectedMessage: string = '0a77hs2u'
    await run(errorMocked as typeof error)
    // expect(errorMocked.mock.calls.length).toBe(1)
    // expect(errorMocked.mock.calls[0][0]).toBe(expectedMessage)
  })

  afterEach(() => {
    errorMocked.mockReset();
  })
})
