describe('Keyboards example', () => {
  beforeAll(async () => {
    await device.launchApp();
  });

  it('should be able to tap buttons in custom keyboards', async () => {
    await element(by.id("ViewControllerTextField")).tap();
    await waitFor(element(by.id("CustomKeyboardButton"))).toBeVisible().withTimeout(2000);
  });
});
