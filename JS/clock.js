class Clock {
  constructor() {
    // 1. Create a Date object.
   let date = new Date();
   this.seconds = date.getSeconds();
   this.minutes = date.getMinutes();
   this.hours = date.getHours();
    // 2. Store the hours, minutes, and seconds.
    // 3. Call printTime.
    this.printTime();
    // 4. Schedule the tick at 1 second intervals.
    setInterval(this._tick.bind(this), 1000);
  }

  printTime() {
    // Format the time in HH:MM:SS
    const timeString = [this.hours, this.minutes, this.seconds].join(":")
    // Use console.log to print it.
    console.log(timeString);
  }

  _tick() {
    // 1. Increment the time by one second.
    this._incrementSeconds();
    // 2. Call printTime.
    this.printTime();
  }

  _incrementSeconds() {
      if (this.seconds === 60) {
          this._incrementMinutes();
          this.seconds = 0;
      } else {
          this.seconds += 1;
      }
  }

  _incrementMinutes() {
      if (this.minutes === 60) {
          this._incrementHours();
          this.minutes = 0;
      } else {
          this.minutes += 1;
      }
  }

  _incrementHours() {
      this.hours = (this.hours + 1) % 24;
  }
}

const clock = new Clock();