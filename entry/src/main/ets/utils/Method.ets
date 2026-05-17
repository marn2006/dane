export function daffodilsNumber():number[] {
  let result:number[] = [];
  for (let i = 100; i < 1000; i++){
    let unitsDigit: number = i % 10;
    let tenthDigit: number = Math.floor(i / 10) - Math.floor(i /100) * 10;
    let hundredthsDigit: number = Math.floor(i /100);
    if (i === unitsDigit * unitsDigit * unitsDigit + tenthDigit * tenthDigit * tenthDigit + hundredthsDigit * hundredthsDigit * hundredthsDigit){
      result.push(i)
    }
  }
  return result;
}