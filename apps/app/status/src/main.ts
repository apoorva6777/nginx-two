import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const port = 3001; // or any other port you want to use
  await app.listen(port, () => {
    console.log(`Application is running on port ${port}`);
  });
}

bootstrap();