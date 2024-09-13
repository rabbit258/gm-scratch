global.shakex=random_range(-global.shakeremain,global.shakeremain);
global.shakey=random_range(-global.shakeremain,global.shakeremain);

global.shakeremain=max(0,global.shakeremain-(1/global.shakelength)*global.shakemagnitude);
