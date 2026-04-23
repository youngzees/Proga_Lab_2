const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Введите N и V: ', (line1) => {
    const [N, V] = line1.split(' ').map(Number);
    
    rl.question('Введите расстояния R: ', (line2) => {
        const R = line2.split(' ').map(Number);
        
        let fuel = V;
        let stops = 0;
        
        for (let dist of R) {
            if (dist > V) {
                console.log(0);
                rl.close();
                return;
            }
            
            if (fuel < dist) {
                stops++;
                fuel = V;
            }
            
            fuel -= dist;
        }
        
        console.log(stops);
        rl.close();
    });
});