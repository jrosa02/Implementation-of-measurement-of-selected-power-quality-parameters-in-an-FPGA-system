fixedPointValues = hex_to_fixpt('../../real.log');
complexFixedValues = convert_to_complex(fixedPointValues);

zynq_signal_absolut = abs(complexFixedValues);

%figure;
%semilogy(abs(complexFixedValues)+0.000001);
