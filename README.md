# Hell Gate (1984) by Jeff Minter
<img src="https://www.mobygames.com/images/covers/l/510954-hellgate-commodore-64-front-cover.jpg" height=300><img src="https://user-images.githubusercontent.com/58846/104652406-f9327b00-56b0-11eb-948b-101ce169ef71.gif" height=300>

This is the disassembled and [commented source code] for the 1984 Commodore Vic 20 game Hellgate by Jeff Minter. 

A version of the game you can [play in your browser can be found here]. (Use the arrow keys to move and `ctrl` to fire.)

## Requirements

* [64tass][64tass], tested with v1.54, r1900
* [VICE][vice]

[64tass]: http://tass64.sourceforge.net/
[vice]: http://vice-emu.sourceforge.net/
[https://hellgate.xyz]: https://mwenge.github.io/hellgate.xyz
[commented source code]:https://github.com/mwenge/hellgate/blob/master/src/hellgate.asm
[play in your browser can be found here]: https://mwenge.github.io/hellgate

To compile and run it do:

```sh
$ make
```
The compiled game is written to the `bin` folder. 

To just compile the game and get a binary (`hellgate.prg`) do:

```sh
$ make hellgate
```

