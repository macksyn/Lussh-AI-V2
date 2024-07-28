const bot = require(__dirname + '/AiBotzz')
const { VERSION } = require(__dirname + '/config')

const start = async () => {
    Debug.info(`Starting Lussh AI ${VERSION}`)
  try {
    await bot.init()
    //bot.logger.info('⏳ Database syncing!')
    await bot.DATABASE.sync()
    await bot.connect()
  } catch (error) {
    Debug.error(error);
    start();
  }
}
start();
