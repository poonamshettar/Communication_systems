fs = 10;
fm = 10;
a = 1;

t = 0:0.0001:1; % Sampling rate of 10kHz
pulse = sawtooth(2 * pi * fs * t+pi);

subplot(3,1,1);
plot(t, pulse); % Plotting the pulse wave
title('Pulse');

msg = a * sin(2 * pi * fm * t);

subplot(3,1,2);
plot(t, msg); % Plotting the sine message wave
title('Message Signal');

pwm = zeros(size(t));

for i = 1:length(pulse)
    if (msg(i) >= pulse(i))
        pwm(i) = 1; % If message signal amplitude at i-th sample is greater than pulse amplitude
    else
        pwm(i) = 0;
    end
end

subplot(3,1,3);
plot(t, pwm, 'r');
title('PWM');
axis([0 1 0 1.1]); % To keep the PWM visible during plotting