import { Controller, Get, Response, HttpCode, Header, HttpStatus} from '@nestjs/common';
import { PingService } from './ping.service';
import { Response as Res } from 'express';

@Controller()
export class PingController {
  constructor(private readonly pingService: PingService) {}
  @Get('ping')
  getPing(@Response() res: Res): Res {
    return this.pingService.getPing(res);
  }
}
